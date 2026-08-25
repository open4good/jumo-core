package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

processes := corpus.documents_of_kind("ProcessSpec")

# Process payloads deliberately name generated LinkML classes, rather than an open string protocol.
# The small, release-bound vocabulary keeps this Rego gate authoritative without creating another
# type checker: the same names are emitted by execution.yaml and committed in the manifest.
generated_types := {"ApprovalSignal", "AttentionItem", "ChangeProposalRef", "ConnectorAppraisal", "ExecutionCellProvisioningRef", "ForgeProjectionRef", "ProcessRunRef"}
opa_entrypoints := {"jumo.authz.decision"}

steps(document) := object.get(corpus.spec(document), "steps", [])
flows(document) := object.get(corpus.spec(document), "flows", [])
step_ids(document) := {step.id | some step in steps(document)}
flow_ids(document) := {flow.id | some flow in flows(document)}

step_by_id(document, id) := step if {
	some step in steps(document)
	step.id == id
}

edges(document) := {flow.from: {candidate.to | some candidate in flows(document); candidate.from == flow.from} | some flow in flows(document)}
reachable(document, source) := graph.reachable(edges(document), {source})
end_ids(document) := {step.id | some step in steps(document); step.kind == "END"}

start_id(document) := start if {
	some step in steps(document)
	step.kind == "START"
	start := step.id
}

# Product graph used for an actual every-path dominance proof. State 0 has not traversed policy,
# state 1 has traversed policy but not a grant, and state 2 has traversed both in that order.
# Reaching an effect in state 0/1 is precisely a bypass path; cycles cannot hide one.
grant_after_policy(step, state) if {
	state == 1
	step.capabilityRef == "capability.grant.acquire"
}

policy_gate(step, state) if {
	state < 1
	step.opaEntrypoint == "jumo.authz.decision"
}

advance(step, state) := 2 if grant_after_policy(step, state)
advance(step, state) := 1 if policy_gate(step, state)

advance(step, state) := state if {
	not grant_after_policy(step, state)
	not policy_gate(step, state)
}

state_node(id, state) := sprintf("%s#%d", [id, state])
secured_edges(document) := {state_node(source.id, state): {state_node(flow.to, advance(step_by_id(document, flow.to), state)) |
	some flow in flows(document)
	flow.from == source.id
} |
	some source in steps(document)
	some state in {0, 1, 2}
}

secured_reachable(document) := graph.reachable(secured_edges(document), {state_node(start_id(document), 0)})

bounded_cycle_step(document, step) if {
	step.kind == "GATEWAY"
	maximum := object.get(step, "loopMaximum", 0)
	maximum >= 1
	maximum <= 100
	object.get(step, "fallbackFlowRef", "") in flow_ids(document)
}

deny contains corpus.violation("corpus.process.graph-shape", document, message) if {
	some document in processes
	starts := [step | some step in steps(document); step.kind == "START"]
	count(starts) != 1
	message := "spec.steps must declare exactly one START"
}

deny contains corpus.violation("corpus.process.graph-shape", document, message) if {
	some document in processes
	count(end_ids(document)) == 0
	message := "spec.steps must declare at least one END"
}

deny contains corpus.violation("corpus.process.flow", document, message) if {
	some document in processes
	some flow in flows(document)
	not flow.from in step_ids(document)
	message := sprintf("spec.flows[%s].from does not name a step", [flow.id])
}

deny contains corpus.violation("corpus.process.flow", document, message) if {
	some document in processes
	ids := [flow.id | some flow in flows(document)]
	count(ids) != count({id | some id in ids})
	message := "spec.flows IDs must be unique"
}

deny contains corpus.violation("corpus.process.flow", document, message) if {
	some document in processes
	some flow in flows(document)
	not flow.to in step_ids(document)
	message := sprintf("spec.flows[%s].to does not name a step", [flow.id])
}

deny contains corpus.violation("corpus.process.type", document, message) if {
	some document in processes
	some type in array.concat([corpus.spec(document).inputType, corpus.spec(document).outputType], [flow.payloadType | some flow in flows(document)])
	not type in generated_types
	message := sprintf("type %q is not a generated LinkML class", [type])
}

deny contains corpus.violation("corpus.process.reachability", document, message) if {
	some document in processes
	start := [step.id | some step in steps(document); step.kind == "START"][0]
	some step in steps(document)
	step.kind != "END"
	not step.id in reachable(document, start)
	message := sprintf("step %q is unreachable from START", [step.id])
}

deny contains corpus.violation("corpus.process.reachability", document, message) if {
	some document in processes
	start := [step.id | some step in steps(document); step.kind == "START"][0]
	not end_ids(document) & reachable(document, start)
	message := "START has no END-reachable normal path"
}

deny contains corpus.violation("corpus.process.end", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "END"
	object.get(step, "terminalState", "") == ""
	message := sprintf("END %q must declare terminalState", [step.id])
}

deny contains corpus.violation("corpus.process.end", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind != "END"
	object.get(step, "terminalState", "") != ""
	message := sprintf("only END may declare terminalState (%q)", [step.id])
}

deny contains corpus.violation("corpus.process.signal", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind in {"USER", "MESSAGE"}
	not object.get(step, "signalType", "") in generated_types
	message := sprintf("signal %q must name a generated signal payload type", [step.id])
}

deny contains corpus.violation("corpus.process.gateway", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "GATEWAY"
	not object.get(step, "gatewayMode", "") in {"EXCLUSIVE", "PARALLEL"}
	message := sprintf("gateway %q must declare gatewayMode", [step.id])
}

deny contains corpus.violation("corpus.process.gateway", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "GATEWAY"
	step.gatewayRole == "SPLIT"
	not object.get(step, "opaEntrypoint", "") in opa_entrypoints
	message := sprintf("gateway %q must resolve an allowed OPA entry point", [step.id])
}

deny contains corpus.violation("corpus.process.gateway", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "GATEWAY"
	object.get(step, "gatewayRole", "") in {"SPLIT", "JOIN"}
	paired := object.get(step, "pairedGatewayRef", "")
	not paired in step_ids(document)
	message := sprintf("gateway %q must pair with a declared gateway", [step.id])
}

deny contains corpus.violation("corpus.process.loop", document, message) if {
	some document in processes
	some flow in flows(document)
	flow.from in reachable(document, flow.to)
	step := step_by_id(document, flow.from)
	not bounded_cycle_step(document, step)
	message := sprintf("cycle flow %q requires a bounded gateway and fallback flow", [flow.id])
}

deny contains corpus.violation("corpus.process.subprocess", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "SUBPROCESS"
	release := object.get(step, "subprocessReleaseRef", null)
	not is_object(release)
	message := sprintf("subprocess %q must reference an exact ProcessSpec release", [step.id])
}

deny contains corpus.violation("corpus.process.effect-gates", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "SERVICE"
	capability := corpus.capability_by_name(step.capabilityRef)
	capability.producesExternalEffect == true
	state_node(step.id, 0) in secured_reachable(document)
	message := sprintf("effect %q has a path that bypasses jumo.authz.decision", [step.id])
}

deny contains corpus.violation("corpus.process.effect-gates", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "SERVICE"
	capability := corpus.capability_by_name(step.capabilityRef)
	capability.producesExternalEffect == true
	state_node(step.id, 1) in secured_reachable(document)
	message := sprintf("effect %q has a path that bypasses capability.grant.acquire after policy", [step.id])
}

deny contains corpus.violation("corpus.process.capability", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "SERVICE"
	not step.capabilityRef in corpus.capability_names
	message := sprintf("service %q names unknown capability %q", [step.id, step.capabilityRef])
}

deny contains corpus.violation("corpus.process.ring-ceiling", document, message) if {
	some document in processes
	some step in steps(document)
	step.kind == "SERVICE"
	capability := corpus.capability_by_name(step.capabilityRef)
	ceiling := object.get(capability, "ringCeiling", null)
	ceiling != null
	ring := object.get(step, "ring", null)
	ring != null
	corpus.ring_rank(ring) > corpus.ring_rank(ceiling)
	message := sprintf("service %q ring %s exceeds capability %q ceiling %s", [step.id, ring, step.capabilityRef, ceiling])
}

provider_terms_reviews contains {
	"document": document,
	"location": location,
	"review": review,
} if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	permissions := object.get(object.get(corpus.spec(document), "entitlement", {}), "usePermissions", {})
	some field, permission in permissions
	is_object(permission)
	review := object.get(permission, "termsReview", {})
	location := sprintf("spec.entitlement.usePermissions.%s.termsReview", [field])
}

date_ns(value) := time.parse_rfc3339_ns(sprintf("%sT00:00:00Z", [substring(value, 0, 10)]))

policy_now_ns := date_ns(corpus.policy_context.now)

deny contains corpus.violation("corpus.provider.terms-order", document, message) if {
	some item in provider_terms_reviews
	document := item.document
	reviewed := date_ns(item.review.reviewedAt)
	valid_until := date_ns(item.review.validUntil)
	valid_until < reviewed
	message := sprintf("%s: validUntil must not precede reviewedAt", [item.location])
}

deny contains corpus.violation("corpus.provider.terms-future", item.document, message) if {
	some item in provider_terms_reviews
	date_ns(item.review.reviewedAt) > policy_now_ns
	message := sprintf("%s: reviewedAt may not be in the future", [item.location])
}

deny contains corpus.violation("corpus.provider.terms-expired", item.document, message) if {
	some item in provider_terms_reviews
	date_ns(item.review.validUntil) < policy_now_ns
	message := sprintf("%s: validUntil has expired", [item.location])
}

ninety_days_ns := (((90 * 24) * 60) * 60) * 1000000000

deny contains corpus.violation("corpus.provider.terms-window", item.document, message) if {
	some item in provider_terms_reviews
	date_ns(item.review.validUntil) - date_ns(item.review.reviewedAt) > ninety_days_ns
	message := sprintf("%s: validity exceeds 90 days", [item.location])
}

deny contains corpus.violation("corpus.provider.platform-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	platform_ref := corpus.ref_id(object.get(object.get(corpus.spec(document), "routing", {}), "platformRef", null))
	platform_ref != null
	not platform_ref in corpus.ids_of_kind("ProviderPlatform")
	message := sprintf("spec.routing.platformRef: no ProviderPlatform declares id %q", [platform_ref])
}

deny contains corpus.violation("corpus.provider.platform-required-for-gateway", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "GATEWAY_ROUTED"
	object.get(routing, "platformRef", null) == null
	message := "GATEWAY_ROUTED ProviderAccount requires spec.routing.platformRef"
}

deny contains corpus.violation("corpus.provider.platform-forbidden-for-plan", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "PLAN_DIRECT"
	object.get(routing, "platformRef", null) != null
	message := "PLAN_DIRECT ProviderAccount must not declare spec.routing.platformRef"
}

# The upstream host for a generic (aggregator) platform is a per-account fact, never a catalog
# default -- exactly one of the platform and the account may name it (provider-platform-catalog lot).
deny contains corpus.violation("corpus.provider.upstream-host-required", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	host_declared_by_account(document)
	object.get(object.get(corpus.spec(document), "routing", {}), "upstreamHost", null) == null
	message := "spec.routing.upstreamHost is required when the referenced ProviderPlatform declares hostDeclaredByAccount"
}

deny contains corpus.violation("corpus.provider.upstream-host-forbidden", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	not host_declared_by_account(document)
	object.get(object.get(corpus.spec(document), "routing", {}), "upstreamHost", null) != null
	message := "spec.routing.upstreamHost is forbidden unless the referenced ProviderPlatform declares hostDeclaredByAccount"
}

host_declared_by_account(document) := object.get(corpus.spec(platform_for_account(document)), "hostDeclaredByAccount", false)

default platform_for_account(_) := {}

platform_for_account(document) := platform if {
	ref := object.get(object.get(corpus.spec(document), "routing", {}), "platformRef", null)
	ref != null
	platform := corpus.document_by_kind_id("ProviderPlatform", corpus.ref_id(ref))
}

effective_effort_ladder(document) := declared if {
	declared := object.get(object.get(corpus.spec(document), "routing", {}), "effortLadder", [])
	count(declared) > 0
}

# A declared effortLadder is not present -- inherit from the referenced platform's
# defaultEffortLadder, or [] when the account names no resolvable platform at all (platform-resolves
# and platform-required-for-gateway already flag that separately).
effective_effort_ladder(document) := object.get(corpus.spec(platform_for_account(document)), "defaultEffortLadder", []) if {
	count(object.get(object.get(corpus.spec(document), "routing", {}), "effortLadder", [])) == 0
}

deny contains corpus.violation("corpus.provider.effort-ladder-empty", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	object.get(corpus.spec(document), "routing", {}).mode == "GATEWAY_ROUTED"
	count(effective_effort_ladder(document)) == 0
	message := "spec.routing: no effortLadder is declared on the account or inherited from its platform"
}

deny contains corpus.violation("corpus.provider.effort-ladder-rung-unique", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	rungs := [rung.rung | some rung in object.get(object.get(corpus.spec(document), "routing", {}), "effortLadder", [])]
	count(rungs) != count({rung | some rung in rungs})
	message := "spec.routing.effortLadder: rung values must be unique"
}

deny contains corpus.violation("corpus.platform.effort-ladder-rung-unique", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderPlatform"
	rungs := [rung.rung | some rung in object.get(corpus.spec(document), "defaultEffortLadder", [])]
	count(rungs) != count({rung | some rung in rungs})
	message := "spec.defaultEffortLadder: rung values must be unique"
}

deny contains corpus.violation("corpus.platform.upstream-host", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderPlatform"
	platform_host_declared_by_account(document)
	object.get(corpus.spec(document), "upstreamHost", null) != null
	message := "spec.upstreamHost is forbidden when hostDeclaredByAccount is true"
}

deny contains corpus.violation("corpus.platform.upstream-host-required", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderPlatform"
	not platform_host_declared_by_account(document)
	object.get(corpus.spec(document), "upstreamHost", null) == null
	message := "spec.upstreamHost is required unless hostDeclaredByAccount is true"
}

platform_host_declared_by_account(document) := object.get(corpus.spec(document), "hostDeclaredByAccount", false)

deny contains corpus.violation("corpus.provider.alternative", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	some alternative_ref in object.get(corpus.spec(document), "alternativeProviderAccountRefs", [])
	alternative := corpus.ref_id(alternative_ref)
	not alternative in corpus.ids_of_kind("ProviderAccount")
	message := sprintf("spec.alternativeProviderAccountRefs: no ProviderAccount declares id %q", [alternative])
}

deny contains corpus.violation("corpus.provider.secret-binding", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	binding_ref := corpus.ref_id(object.get(corpus.spec(document), "secretBindingRef", null))
	binding_ref != null
	not binding_ref in corpus.ids_of_kind("SecretBinding")
	message := sprintf("spec.secretBindingRef: no SecretBinding declares id %q", [binding_ref])
}

# Managed gateway accounts are never admitted with implicit custody or an implicit fallback.
# PLAN_DIRECT CLI accounts intentionally remain local and are governed by their CLI substrate.
deny contains corpus.violation("corpus.provider.gateway-binding-required", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "GATEWAY_ROUTED"
	object.get(corpus.spec(document), "secretBindingRef", null) == null
	message := "GATEWAY_ROUTED ProviderAccount requires spec.secretBindingRef"
}

deny contains corpus.violation("corpus.provider.gateway-priority-required", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "GATEWAY_ROUTED"
	object.get(routing, "priority", null) == null
	message := "GATEWAY_ROUTED ProviderAccount requires spec.routing.priority"
}

deny contains corpus.violation("corpus.provider.gateway-alternative-required", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "GATEWAY_ROUTED"
	count(object.get(corpus.spec(document), "alternativeProviderAccountRefs", [])) == 0
	message := "GATEWAY_ROUTED ProviderAccount requires at least one declared alternativeProviderAccountRef"
}

deny contains corpus.violation("corpus.provider.alternative-self", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	some alternative_ref in object.get(corpus.spec(document), "alternativeProviderAccountRefs", [])
	corpus.ref_id(alternative_ref) == corpus.id(document)
	message := "spec.alternativeProviderAccountRefs: an account may not list itself"
}

# A compatible rung has one deterministic first-choice account. The priority is a contract fact,
# not a runtime observation, so ties are rejected before a route is emitted.
deny contains corpus.violation("corpus.provider.priority-unique", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	priority := object.get(object.get(corpus.spec(document), "routing", {}), "priority", null)
	priority != null
	some rung in effective_effort_ladder(document)
	some other in corpus.documents
	other.kind == "ProviderAccount"
	corpus.id(other) != corpus.id(document)
	object.get(corpus.spec(other), "routing", {}).priority == priority
	some other_rung in effective_effort_ladder(other)
	other_rung.rung == rung.rung
	message := sprintf("spec.routing.priority %v is already used for reasoning effort rung %q by ProviderAccount %q", [priority, rung.rung, corpus.id(other)])
}

account_permission(account, account_use) := permission if {
	field := {"HOLDER_OPERATED": "holderOperated", "JUMO_MANAGED": "jumoManaged"}[account_use]
	permission := object.get(
		object.get(object.get(corpus.spec(account), "entitlement", {}), "usePermissions", {}),
		field,
		{},
	)
}

connector_operation(connector_ref, operation_ref) := operation if {
	connector := corpus.document_by_kind_id("ConnectorDefinition", connector_ref)
	some operation in object.get(corpus.spec(connector), "operations", [])
	operation.id == operation_ref
}

deny contains corpus.violation("corpus.worker.account", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	account_ref := corpus.ref_id(object.get(object.get(corpus.spec(document), "modelAccess", {}), "providerAccountRef", null))
	account_ref != null
	not account_ref in corpus.ids_of_kind("ProviderAccount")
	message := sprintf("spec.modelAccess.providerAccountRef: no ProviderAccount declares id %q", [account_ref])
}

deny contains corpus.violation("corpus.worker.gateway", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	access := object.get(corpus.spec(document), "modelAccess", {})
	access.mode == "GATEWAY_ROUTED"
	object.get(access, "gatewayRef", null) == null
	message := "GATEWAY_ROUTED requires gatewayRef"
}

deny contains corpus.violation("corpus.worker.gateway-credential", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	access := object.get(corpus.spec(document), "modelAccess", {})
	access.mode == "GATEWAY_ROUTED"
	access.credentialSource != "GATEWAY_TOKEN_ONLY"
	access.credentialSource != "OPENBAO_RENDERED_FILE"
	message := "GATEWAY_ROUTED requires GATEWAY_TOKEN_ONLY"
}

deny contains corpus.violation("corpus.worker.gateway-credential", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	access := object.get(spec, "modelAccess", {})
	access.mode == "GATEWAY_ROUTED"
	access.credentialSource == "OPENBAO_RENDERED_FILE"
	spec.substrate != "MODEL_WORKER_PROCESS"
	message := "OPENBAO_RENDERED_FILE is reserved for MODEL_WORKER_PROCESS"
}

deny contains corpus.violation("corpus.worker.model-worker-credential", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	access.mode != "GATEWAY_ROUTED"
	message := "MODEL_WORKER_PROCESS requires GATEWAY_ROUTED model access"
}

deny contains corpus.violation("corpus.worker.model-worker-credential", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	access.credentialSource != "OPENBAO_RENDERED_FILE"
	message := "MODEL_WORKER_PROCESS requires OPENBAO_RENDERED_FILE credentials"
}

deny contains corpus.violation("corpus.worker.model-worker-secret", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	binding_ref := corpus.ref_id(object.get(access, "secretBindingRef", null))
	binding_ref == null
	message := "MODEL_WORKER_PROCESS requires modelAccess.secretBindingRef"
}

deny contains corpus.violation("corpus.worker.model-worker-secret", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	binding_ref := corpus.ref_id(object.get(access, "secretBindingRef", null))
	binding_ref != null
	not binding_ref in corpus.ids_of_kind("SecretBinding")
	message := sprintf("spec.modelAccess.secretBindingRef: no SecretBinding declares id %q", [binding_ref])
}

deny contains corpus.violation("corpus.worker.model-worker-secret", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	binding_ref := corpus.ref_id(object.get(access, "secretBindingRef", null))
	binding_ref != null
	binding := corpus.document_by_kind_id("SecretBinding", binding_ref)
	corpus.owner_realm(binding) != spec.ownerRealm
	message := "model worker and its SecretBinding must belong to the same Realm"
}

deny contains corpus.violation("corpus.worker.model-worker-secret", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	access := object.get(spec, "modelAccess", {})
	binding_ref := corpus.ref_id(object.get(access, "secretBindingRef", null))
	binding_ref != null
	binding := corpus.document_by_kind_id("SecretBinding", binding_ref)
	allowed := [corpus.ref_id(w) | some w in object.get(corpus.spec(binding), "allowedWorkerSubstrateRefs", [])]
	not corpus.id(document) in allowed
	message := "model worker is not allowlisted by its SecretBinding"
}

deny contains corpus.violation("corpus.secret.model-worker-injection", document, message) if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	injection := object.get(corpus.spec(document), "injection", {})
	injection.target == "MODEL_WORKER_PROCESS_ONLY"
	object.get(injection, "fileName", null) == null
	message := "MODEL_WORKER_PROCESS_ONLY requires injection.fileName"
}

deny contains corpus.violation("corpus.secret.model-worker-injection", document, message) if {
	some document in corpus.documents
	document.kind == "SecretBinding"
	injection := object.get(corpus.spec(document), "injection", {})
	injection.target == "MODEL_WORKER_PROCESS_ONLY"
	object.get(injection, "environmentVariable", null) != null
	message := "MODEL_WORKER_PROCESS_ONLY forbids an environmentVariable secret injection"
}

deny contains corpus.violation("corpus.worker.direct-gateway", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	access := object.get(corpus.spec(document), "modelAccess", {})
	access.mode == "PLAN_DIRECT"
	object.get(access, "gatewayRef", null) != null
	message := "PLAN_DIRECT forbids gatewayRef"
}

# ProviderRouting.gatewayRef says "forbidden when PLAN_DIRECT (Rego, LOT 6)", but only the
# substrate side of that pair was ever written. Without this, a plan-direct account could still
# name a gateway and nothing would say so.
deny contains corpus.violation("corpus.provider.direct-gateway", document, message) if {
	some document in corpus.documents
	document.kind == "ProviderAccount"
	routing := object.get(corpus.spec(document), "routing", {})
	routing.mode == "PLAN_DIRECT"
	object.get(routing, "gatewayRef", null) != null
	message := "spec.routing: PLAN_DIRECT forbids gatewayRef"
}

# A substrate's access mode and its account's routing mode are two declarations of one fact. When
# they disagree, a plan substrate can borrow a gateway-routed account and the credential rules that
# each mode carries stop meaning anything.
deny contains corpus.violation("corpus.worker.account-mode", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	access := object.get(corpus.spec(document), "modelAccess", {})
	account_ref := corpus.ref_id(object.get(access, "providerAccountRef", null))
	account_ref != null
	account_ref in corpus.ids_of_kind("ProviderAccount")
	account := corpus.document_by_kind_id("ProviderAccount", account_ref)
	routing_mode := object.get(object.get(corpus.spec(account), "routing", {}), "mode", null)
	routing_mode != access.mode
	message := sprintf(
		"spec.modelAccess.mode %s does not match ProviderAccount %q routing mode %s",
		[access.mode, account_ref, routing_mode],
	)
}

# The cli slot is optional in the schema because MODEL_WORKER_PROCESS has no CLI. For a
# LOCAL_CLI_CONTAINER it is the reviewable fact: which CLI runs in that image.
deny contains corpus.violation("corpus.worker.cli-declared", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "LOCAL_CLI_CONTAINER"
	object.get(spec, "cli", null) == null
	message := "LOCAL_CLI_CONTAINER requires spec.cli"
}

# A local CLI is always hosted by a durable machine.  ExecutionCellLease is invocation-scoped
# and therefore cannot carry either the installed runtime or the holder's local session.
deny contains corpus.violation("corpus.worker.cli-machine", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "LOCAL_CLI_CONTAINER"
	object.get(spec, "executionMachineRef", null) == null
	message := "LOCAL_CLI_CONTAINER requires spec.executionMachineRef"
}

# ADR-0012 keeps the model worker with no repository. workspace ABSENT is how that is said in the
# contract, so a model worker that acquires a writable tree is refused here rather than noticed in
# a Compose file.
deny contains corpus.violation("corpus.worker.model-worker-workspace", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.substrate == "MODEL_WORKER_PROCESS"
	object.get(object.get(spec, "isolation", {}), "workspace", null) != "ABSENT"
	message := "MODEL_WORKER_PROCESS requires isolation.workspace ABSENT"
}

deny contains corpus.violation("corpus.worker.direct-credential", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	access := object.get(corpus.spec(document), "modelAccess", {})
	access.mode == "PLAN_DIRECT"
	access.credentialSource != "PLAN_SESSION_ONLY"
	message := "PLAN_DIRECT requires PLAN_SESSION_ONLY"
}

deny contains corpus.violation("corpus.worker.commercial-entitlement", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.usageContext == "COMMERCIAL"
	spec.lifecycle == "ENABLED"
	account_id := corpus.ref_id(object.get(spec.modelAccess, "providerAccountRef", null))
	account_id != null
	account := corpus.document_by_kind_id("ProviderAccount", account_id)
	permission := account_permission(account, spec.accountUse)
	object.get(permission, "verdict", "") != "PERMITTED"
	message := "COMMERCIAL enabled substrate requires a PERMITTED ProviderAccount entitlement"
}

deny contains corpus.violation("corpus.worker.workspace-absent", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	spec.isolation.workspace == "ABSENT"
	count(object.get(spec, "grantedOperationRefs", [])) > 0
	message := "isolation.workspace ABSENT forbids external operation reach"
}

deny contains corpus.violation("corpus.worker.operation", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	some index, reference in object.get(corpus.spec(document), "grantedOperationRefs", [])
	not connector_operation(reference.connectorRef, reference.operationRef)
	message := sprintf("spec.grantedOperationRefs[%d]: no connector operation declares %s.%s", [index, reference.connectorRef, reference.operationRef])
}

deny contains corpus.violation("corpus.worker.external-effect", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	some index, reference in object.get(corpus.spec(document), "grantedOperationRefs", [])
	operation := connector_operation(reference.connectorRef, reference.operationRef)
	external_effect_capability(operation.capabilityRef)
	message := sprintf("spec.grantedOperationRefs[%d] reaches an external-effect capability directly", [index])
}

deny contains corpus.violation("corpus.worker.ambient-tool-authority", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	object.get(spec, "ambientToolAuthority", "DISABLED") != "DISABLED"
	message := "WorkerSubstrate ambientToolAuthority must be DISABLED"
}

deny contains corpus.violation("corpus.worker.projected-tool-authority", document, message) if {
	some document in corpus.documents
	document.kind == "WorkerSubstrate"
	spec := corpus.spec(document)
	object.get(spec, "projectedToolAuthority", "GRANT_ONLY") != "GRANT_ONLY"
	message := "WorkerSubstrate projectedToolAuthority must be GRANT_ONLY"
}

deny contains corpus.violation("corpus.cell.credential-custody", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	spec := corpus.spec(document)
	object.get(spec, "credentialCustody", "") != "LOCAL_CELL_SEALED"
	message := "ExecutionCell credentialCustody must be LOCAL_CELL_SEALED"
}

deny contains corpus.violation("corpus.cell.placement", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	spec := corpus.spec(document)
	not object.get(spec, "placement", "") in {"PLATFORM", "HOSTED_VM", "DESKTOP", "ANDROID"}
	message := sprintf("ExecutionCell placement %q is invalid", [object.get(spec, "placement", "")])
}

agent_for_role(role_id) := agent if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	corpus.ref_id(object.get(corpus.spec(assignment), "roleDefinitionRef", object.get(corpus.spec(assignment), "operatorRef", ""))) == role_id
	bearer := object.get(corpus.spec(assignment), "bearer", {})
	bearer.kind == "AGENT"
	agent := corpus.document_by_kind_id("AgentDefinition", corpus.ref_id(object.get(bearer, "agentDefinitionRef", object.get(bearer, "archetypeRef", ""))))
}

deny contains corpus.violation("corpus.work.ring-ceiling", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	ring := object.get(corpus.spec(document), "ring", null)
	ring != null
	producer := corpus.ref_id(object.get(corpus.spec(document), "producerRoleDefinitionRef", object.get(corpus.spec(document), "operatorRef", "")))
	agent := agent_for_role(producer)
	some capability_name in object.get(corpus.spec(agent), "requestedCapabilities", [])
	capability := corpus.capability_by_name(capability_name)
	ceiling := object.get(capability, "ringCeiling", null)
	ceiling != null
	corpus.ring_rank(ring) > corpus.ring_rank(ceiling)
	message := sprintf("spec.ring %s exceeds capability %q ceiling %s", [ring, capability_name, ceiling])
}

deny contains corpus.violation("corpus.prompt.agent", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	agent_ref := corpus.ref_id(object.get(corpus.spec(document), "agentDefinitionRef", object.get(corpus.spec(document), "archetype", "")))
	not agent_ref in corpus.ids_of_kind("AgentDefinition")
	message := sprintf("spec.agentDefinitionRef: no AgentDefinition declares id %q", [agent_ref])
}

deny contains corpus.violation("corpus.prompt.capability-widening", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	agent_ref := corpus.ref_id(object.get(corpus.spec(document), "agentDefinitionRef", object.get(corpus.spec(document), "archetype", "")))
	agent := corpus.document_by_kind_id("AgentDefinition", agent_ref)
	agent != null
	allowed := {name | some name in object.get(corpus.spec(agent), "requestedCapabilities", [])}
	some name in object.get(corpus.spec(document), "mayProposeCapabilities", [])
	not name in allowed
	message := sprintf("spec.mayProposeCapabilities: %q is not requested by the AgentDefinition", [name])
}

deny contains corpus.violation("corpus.prompt.structured-output", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	spec := corpus.spec(document)
	count(object.get(spec, "mayProposeCapabilities", [])) > 0
	object.get(object.get(spec, "output", {}), "form", "") != "STRUCTURED"
	message := "a prompt that proposes capabilities must produce STRUCTURED output"
}

# A STRUCTURED PromptOutput's schemaRef/javaType are the one seam between a declared prompt and
# the code meant to consume its reply. Neither is checked anywhere else in this metamodel today
# (unlike the reference-resolution rules above), so an unresolvable one is exactly the appliedBy
# failure mode: a field carried as metadata that nothing actually verifies against real code.

deny contains corpus.violation("corpus.prompt.structured-schema", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	output := object.get(corpus.spec(document), "output", {})
	output.form == "STRUCTURED"
	schema_ref := object.get(output, "schemaRef", "")
	schema_ref != ""
	not schema_ref in known_projection_classes
	message := sprintf("spec.output.schemaRef: %q is not a generated LinkML class", [schema_ref])
}

prompt_java_type_sources(java_type) := {source |
	some source in object.get(repository_facts, "javaSources", [])
	endswith(source.path, sprintf("/%s.java", [regex.replace(java_type, `^.*\.`, "")]))
}

deny contains corpus.violation("corpus.prompt.structured-java-type", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	output := object.get(corpus.spec(document), "output", {})
	output.form == "STRUCTURED"
	java_type := object.get(output, "javaType", "")
	java_type != ""
	count(prompt_java_type_sources(java_type)) == 0
	message := sprintf("spec.output.javaType: %q has no matching generated Java source", [java_type])
}

# ConversationService resolves a task ("COORDINATE", "DELIBERATE", ...) to the PromptTemplate that
# declares it, replacing a hardcoded task -> promptId switch. Two PromptTemplates claiming one task
# make that resolution ambiguous.
deny contains corpus.violation("corpus.prompt.conversation-task-unique", document, message) if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	spec := corpus.spec(document)
	task := object.get(spec, "conversationTask", "")
	task != ""
	peers := {other |
		some other in corpus.documents
		other.kind == "PromptTemplate"
		corpus.spec(other).conversationTask == task
	}
	count(peers) > 1
	message := sprintf("spec.conversationTask: %q is claimed by more than one PromptTemplate", [task])
}

# ExecutionCellProvisioningActivitiesImpl resolves a MachineAdminPlaybook by scanning for the one
# declaring the capability a ProcessStep names, replacing a hardcoded playbookRef literal. Two
# playbooks claiming one capability make that resolution ambiguous.
deny contains corpus.violation("corpus.machine-admin-playbook.capability-unique", document, message) if {
	some document in corpus.documents
	document.kind == "MachineAdminPlaybook"
	spec := corpus.spec(document)
	capability := object.get(spec, "appliesToCapability", "")
	capability != ""
	peers := {other |
		some other in corpus.documents
		other.kind == "MachineAdminPlaybook"
		corpus.spec(other).appliesToCapability == capability
	}
	count(peers) > 1
	message := sprintf("spec.appliesToCapability: %q is claimed by more than one MachineAdminPlaybook", [capability])
}

prompt_references contains {
	"document": document,
	"field": field,
	"target_kind": target_kind,
	"identifier": identifier,
} if {
	some document in corpus.documents
	document.kind == "PromptTemplate"
	some field in {"budgetRef", "workerRequirementRef"}
	identifier := object.get(corpus.spec(document), field, null)
	identifier != null
	target_kind := {"budgetRef": "ResourceBudget", "workerRequirementRef": "WorkerRequirementProfile"}[field]
}

deny contains corpus.violation("corpus.prompt.reference", document, message) if {
	some reference in prompt_references
	document := reference.document
	field := reference.field
	target_kind := reference.target_kind
	identifier := reference.identifier
	not identifier in corpus.ids_of_kind(target_kind)
	message := sprintf("spec.%s: no %s declares id %q", [field, target_kind, identifier])
}

# A QUALIFIED CliToolDefinition is offerable as a CLI engine, and what the runtime records on the
# WorkerSubstrate it emits is the WorkerCli the tool declares. Undeclared, the runtime has nothing
# to record and would emit a substrate whose cli is empty -- refused here rather than at apply.
deny contains corpus.violation("corpus.cli-tool.qualified-declares-cli", document, message) if {
	some document in corpus.documents
	document.kind == "CliToolDefinition"
	spec := corpus.spec(document)
	spec.qualification == "QUALIFIED"
	object.get(spec, "cli", "") == ""
	message := "spec.cli: required when qualification is QUALIFIED"
}

# Two QUALIFIED tools claiming one engine make the offered option ambiguous: the select shows both
# and the runtime resolves whichever the loader returns first.
deny contains corpus.violation("corpus.cli-tool.qualified-cli-unique", document, message) if {
	some document in corpus.documents
	document.kind == "CliToolDefinition"
	spec := corpus.spec(document)
	spec.qualification == "QUALIFIED"
	cli := object.get(spec, "cli", "")
	cli != ""
	peers := {other |
		some other in corpus.documents
		other.kind == "CliToolDefinition"
		other_spec := corpus.spec(other)
		other_spec.qualification == "QUALIFIED"
		other_spec.cli == cli
	}
	count(peers) > 1
	message := sprintf("spec.cli: %q is claimed by more than one QUALIFIED CliToolDefinition", [cli])
}
