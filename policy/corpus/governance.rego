package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

accepted_or_started_state(state) if {
	state in {"ACCEPTED", "IN_PROGRESS", "COMPLETED", "FAILED"}
}

review_scope_state(state) if {
	state in {"ACCEPTED", "IN_PROGRESS", "COMPLETED"}
}

work_dependency_graph[identifier] := dependencies if {
	some work in corpus.documents
	work.kind == "WorkOrder"
	identifier := corpus.id(work)
	dependencies := {dependency | some dependency in corpus.work_deps(corpus.spec(work))}
}

team_graph[identifier] := children if {
	some team in corpus.documents
	team.kind == "TeamSpec"
	identifier := corpus.id(team)
	children := {child |
		some member in object.get(corpus.spec(team), "members", [])
		child := corpus.member_team(member)
		child != null
	}
}

team_memberships contains {"team": team_ref, "operator": operator_ref, "group": group} if {
	some team_ref in corpus.ids_of_kind("TeamSpec")
	some reachable in (graph.reachable(team_graph, {team_ref}) | {team_ref})
	team := corpus.document_by_kind_id("TeamSpec", reachable)
	some member in object.get(corpus.spec(team), "members", [])
	operator_ref := corpus.member_role(member)
	operator_ref != null
	group := object.get(member, "independenceGroup", "")
}

team_routes(team_ref, operator_ref) if {
	some membership in team_memberships
	membership.team == team_ref
	membership.operator == operator_ref
}

review_capable(operator_ref) if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	assignment_spec := corpus.spec(assignment)
	corpus.assignment_role(assignment_spec) == operator_ref
	bearer := object.get(assignment_spec, "bearer", {})
	bearer.kind == "AGENT"
	agent := corpus.document_by_kind_id("AgentDefinition", corpus.bearer_agent(bearer))
	"change.review" in object.get(corpus.spec(agent), "requestedCapabilities", [])
}

# A human reviewer is a named same-Realm Principal assigned to a review role. This grants only
# eligibility to record a change.review result; capability grants, owner approval and effects are
# still checked by their respective policy paths.
review_capable(operator_ref) if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	assignment_spec := corpus.spec(assignment)
	corpus.assignment_role(assignment_spec) == operator_ref
	bearer := object.get(assignment_spec, "bearer", {})
	bearer.kind == "HUMAN"
	principal := corpus.document_by_kind_id("Principal", corpus.bearer_principal(bearer))
	corpus.owner_realm(principal) == assignment_spec.ownerRealm
}

distinct_independence_groups(team_ref, producer_ref, verifier_ref) if {
	some producer in team_memberships
	producer.team == team_ref
	producer.operator == producer_ref
	some verifier in team_memberships
	verifier.team == team_ref
	verifier.operator == verifier_ref
	producer.group != ""
	verifier.group != ""
	producer.group != verifier.group
}

controlled_interface_scope(spec) if {
	review_scope_state(spec.state)
	spec.ring == "RING_1_CONTROL_PLANE"
	team_ref := corpus.work_team(spec)
	team_ref != null
	verifier_ref := corpus.work_verifier(spec)
	verifier_ref != null
	team_routes(team_ref, verifier_ref)
	review_capable(verifier_ref)
	distinct_independence_groups(team_ref, corpus.work_producer(spec), verifier_ref)
}

deny contains corpus.violation("corpus.work.accepted-criteria", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	accepted_or_started_state(spec.state)
	count(object.get(spec, "acceptanceCriteria", [])) == 0
	message := "spec.acceptanceCriteria: required from ACCEPTED onward"
}

deny contains corpus.violation("corpus.work.accepted-scope", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	accepted_or_started_state(spec.state)
	count(object.get(spec, "pathScope", [])) == 0
	message := "spec.pathScope: required from ACCEPTED onward"
}

deny contains corpus.violation("corpus.work.accepted-ring", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	accepted_or_started_state(spec.state)
	object.get(spec, "ring", null) == null
	message := "spec.ring: required from ACCEPTED onward"
}

deny contains corpus.violation("corpus.work.accepted-revision", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	accepted_or_started_state(spec.state)
	object.get(spec, "contractRevision", "") == ""
	message := "spec.contractRevision: required from ACCEPTED onward"
}

deny contains corpus.violation("corpus.work.completed-evidence", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	spec.state == "COMPLETED"
	count(object.get(spec, "evidenceRefs", [])) == 0
	message := "spec.evidenceRefs: COMPLETED work requires reproducible evidence"
}

deny contains corpus.violation("corpus.work.completed-in-ledger", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	spec.state == "COMPLETED"
	not contains(corpus.path(document), "/work/ledger/")
	message := "a COMPLETED WorkOrder must be a closure record under .jumo/work/ledger/ (scripts/migrate/compact-completed-work.py)"
}

deny contains corpus.violation("corpus.work.decline-reason-required", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	spec.state == "DECLINED"
	object.get(spec, "declineReason", null) == null
	message := "spec.declineReason: required when state is DECLINED"
}

deny contains corpus.violation("corpus.work.decline-reason-forbidden", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	spec.state != "DECLINED"
	object.get(spec, "declineReason", null) != null
	message := "spec.declineReason: forbidden unless state is DECLINED"
}

deny contains corpus.violation("corpus.work.ring-zero", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	corpus.spec(document).ring == "RING_0_ROOT_OF_TRUST"
	message := "spec.ring: RING_0_ROOT_OF_TRUST is never ordinary delegated work"
}

declared_milestone_ids contains milestone.id if {
	some project in corpus.documents
	project.kind == "Project"
	some milestone in object.get(corpus.spec(project), "milestones", [])
}

# Scoped to open work only: a closure record under .jumo/work/ledger/ is a frozen historical fact
# (scripts/migrate/compact-completed-work.py), not active work subject to the current milestone
# taxonomy. A ledgered WorkOrder keeps whatever roadmapRef it carried when it closed.
deny contains corpus.violation("corpus.work.roadmap-ref-declared", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	not contains(corpus.path(document), "/work/ledger/")
	roadmap_ref := object.get(corpus.spec(document), "roadmapRef", "")
	not roadmap_ref in declared_milestone_ids
	message := sprintf("spec.roadmapRef %q must name a milestone declared in Project.spec.milestones", [roadmap_ref])
}

deny contains corpus.violation("corpus.independence.work-verifier", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	verifier := corpus.work_verifier(spec)
	verifier != null
	verifier == corpus.work_producer(spec)
	message := sprintf("spec.verifierRoleDefinitionRef: %q also produces this work; no actor verifies itself", [verifier])
}

deny contains corpus.violation("corpus.independence.work-verifier-team", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	corpus.work_verifier(spec) != null
	not corpus.work_team(spec)
	message := "spec.teamSpecRef: required when verifierRoleDefinitionRef is declared"
}

deny contains corpus.violation("corpus.independence.work-verifier-route", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	verifier := corpus.work_verifier(spec)
	verifier != null
	team := corpus.work_team(spec)
	team != null
	team in corpus.ids_of_kind("TeamSpec")
	not team_routes(team, verifier)
	message := sprintf("spec.verifierRoleDefinitionRef: %q is not routable through team %q", [verifier, team])
}

deny contains corpus.violation("corpus.independence.work-verifier-capability", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	verifier := corpus.work_verifier(corpus.spec(document))
	verifier != null
	verifier in corpus.ids_of_kind("RoleDefinition")
	not review_capable(verifier)
	message := sprintf("spec.verifierRoleDefinitionRef: %q lacks requested capability change.review", [verifier])
}

deny contains corpus.violation("corpus.independence.work-verifier-group", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	verifier := corpus.work_verifier(spec)
	verifier != null
	team := corpus.work_team(spec)
	team != null
	producer := corpus.work_producer(spec)
	team_routes(team, producer)
	team_routes(team, verifier)
	not distinct_independence_groups(team, producer, verifier)
	message := "spec.verifierRoleDefinitionRef: producer and verifier require distinct non-empty independence groups"
}

role_bearer(operator_ref) := bearer if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	assignment_spec := corpus.spec(assignment)
	corpus.assignment_role(assignment_spec) == operator_ref
	bearer := object.get(assignment_spec, "bearer", {})
}

# Distinct roles are not distinct actors if one agent bears both. ADR-0005 draws this line
# explicitly: an agent's static analysis or test result is evidence, not review authority. Human
# bearers are deliberately out of scope -- the supervised MVP arrangement ADR-0005 records has the
# same person holding owner and reviewer, with the two results kept as distinct audit actions.
deny contains corpus.violation("corpus.independence.work-verifier-bearer", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	verifier := corpus.work_verifier(spec)
	verifier != null
	producer := role_bearer(corpus.work_producer(spec))
	producer.kind == "AGENT"
	checker := role_bearer(verifier)
	checker.kind == "AGENT"
	corpus.bearer_agent(producer) == corpus.bearer_agent(checker)
	message := sprintf(
		"spec.verifierRoleDefinitionRef: %q and %q share agent bearer %q, so no independent actor verifies this work",
		[corpus.work_producer(spec), verifier, corpus.bearer_agent(producer)],
	)
}

project_team_eligible(project_ref, team_ref) if {
	some doc in corpus.documents
	doc.kind == "RoutingEligibility"
	spec := corpus.spec(doc)
	corpus.work_project(spec) == project_ref
	team_ref in [corpus.ref_id(t) | some t in object.get(spec, "eligibleTeamSpecRefs", object.get(spec, "teamRefs", []))]
}

deny contains corpus.violation("corpus.routing.work-order-eligibility", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	project_ref := corpus.work_project(spec)
	project_ref != null
	team_ref := corpus.work_team(spec)
	team_ref != null
	some eligibility in corpus.documents
	eligibility.kind == "RoutingEligibility"
	corpus.work_project(corpus.spec(eligibility)) == project_ref
	not project_team_eligible(project_ref, team_ref)
	message := sprintf(
		"spec.teamSpecRef %q is not declared eligible for project %q in any RoutingEligibility binding",
		[team_ref, project_ref],
	)
}

# A profile no longer names an account directly (that was the requirementAliases N-times-M list,
# removed by the provider-platform-catalog lot): an account is now a candidate for a profile when
# its effective effort ladder (own effortLadder, or its ProviderPlatform's defaultEffortLadder)
# covers the profile's declared reasoningEffort rung.
role_provider_groups contains {"operator": corpus.assignment_role(assignment_spec), "group": corpus.spec(account).independenceGroup} if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	assignment_spec := corpus.spec(assignment)
	bearer := object.get(assignment_spec, "bearer", {})
	bearer.kind == "AGENT"
	profile_ref := corpus.ref_id(object.get(bearer, "defaultWorkerRequirementProfileRef", object.get(bearer, "defaultWorkerRequirementRef", null)))
	profile_ref != null
	profile := corpus.document_by_kind_id("WorkerRequirementProfile", profile_ref)
	rung := object.get(object.get(corpus.spec(profile), "quality", {}), "reasoningEffort", null)
	rung != null
	some account in corpus.documents
	account.kind == "ProviderAccount"
	some ladder_rung in effective_effort_ladder(account)
	ladder_rung.rung == rung
	required_group := object.get(corpus.spec(profile), "requiredIndependenceGroup", "")
	required_group == ""
}

role_provider_groups contains {"operator": corpus.assignment_role(assignment_spec), "group": corpus.spec(account).independenceGroup} if {
	some assignment in corpus.documents
	assignment.kind == "RoleAssignment"
	assignment_spec := corpus.spec(assignment)
	bearer := object.get(assignment_spec, "bearer", {})
	bearer.kind == "AGENT"
	profile_ref := corpus.ref_id(object.get(bearer, "defaultWorkerRequirementProfileRef", object.get(bearer, "defaultWorkerRequirementRef", null)))
	profile_ref != null
	profile := corpus.document_by_kind_id("WorkerRequirementProfile", profile_ref)
	rung := object.get(object.get(corpus.spec(profile), "quality", {}), "reasoningEffort", null)
	rung != null
	some account in corpus.documents
	account.kind == "ProviderAccount"
	some ladder_rung in effective_effort_ladder(account)
	ladder_rung.rung == rung
	required_group := object.get(corpus.spec(profile), "requiredIndependenceGroup", "")
	required_group != ""
	corpus.spec(account).independenceGroup == required_group
}

# Two agents on one provider fail together. ADR-0005 keeps Anthropic and OpenAI separate and rules
# out a provider as review authority, so the producing and verifying roles may not resolve to the
# same provider independence group. No bearer declares defaultWorkerRequirementRef yet: this gate
# is written to refuse the first pairing that would, rather than to be noticed after it lands.
deny contains corpus.violation("corpus.independence.work-verifier-provider", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	verifier := corpus.work_verifier(spec)
	verifier != null
	producer := corpus.work_producer(spec)
	producer_groups := {entry.group | some entry in role_provider_groups; entry.operator == producer}
	verifier_groups := {entry.group | some entry in role_provider_groups; entry.operator == verifier}
	shared := producer_groups & verifier_groups
	count(shared) > 0
	message := sprintf(
		"spec.verifierRoleDefinitionRef: producer and verifier both resolve to provider independence group %s",
		[concat(", ", sort(shared))],
	)
}

deny contains corpus.violation("corpus.independence.release", document, message) if {
	some document in corpus.documents
	document.kind == "KitReleaseCertification"
	spec := corpus.spec(document)
	spec.signedBy == spec.verifiedBy
	message := "spec.verifiedBy: a release signer may not be its sole verifier"
}

# RealmEnforcement.independentVerification is additive and does not gate whether the
# corpus.independence.* rules above apply -- those keep running unconditionally regardless of
# this field, exactly as before it existed. The only thing wired here is the claim itself: same
# "ENFORCED costs an observation and a reference to it" shape as branchProtection, applied to its
# own independentVerification*ObservedAt/EvidenceRef/EvidenceMaxAge trio.
independent_verification_enforcement(document) := enforcement if {
	document.kind == "RealmTemplate"
	enforcement := object.get(corpus.spec(document), "enforcement", {})
	enforcement.independentVerification == "ENFORCED"
}

deny contains corpus.violation("corpus.realm.independent-verification-evidence", document, message) if {
	some document in corpus.documents
	enforcement := independent_verification_enforcement(document)
	object.get(enforcement, "independentVerificationEvidenceRef", "") == ""
	message := "spec.enforcement.independentVerificationEvidenceRef: ENFORCED independentVerification requires a reference"
}

deny contains corpus.violation("corpus.realm.independent-verification-evidence", document, message) if {
	some document in corpus.documents
	enforcement := independent_verification_enforcement(document)
	object.get(enforcement, "independentVerificationObservedAt", null) == null
	message := "spec.enforcement.independentVerificationObservedAt: ENFORCED independentVerification requires an observation"
}

deny contains corpus.violation("corpus.realm.independent-verification-evidence", document, message) if {
	some document in corpus.documents
	enforcement := independent_verification_enforcement(document)
	observed_at := object.get(enforcement, "independentVerificationObservedAt", null)
	observed_at != null
	max_age := object.get(enforcement, "independentVerificationEvidenceMaxAge", null)
	max_age == null
	message := "spec.enforcement.independentVerificationEvidenceMaxAge: required once independentVerificationObservedAt is set"
}

deny contains corpus.violation("corpus.realm.independent-verification-evidence", document, message) if {
	some document in corpus.documents
	enforcement := independent_verification_enforcement(document)
	max_age := object.get(enforcement, "independentVerificationEvidenceMaxAge", null)
	max_age != null
	not iso8601_duration_ns(max_age)
	message := sprintf("spec.enforcement.independentVerificationEvidenceMaxAge: %q is not a valid ISO-8601 duration", [max_age])
}

deny contains corpus.violation("corpus.realm.independent-verification-evidence", document, message) if {
	some document in corpus.documents
	enforcement := independent_verification_enforcement(document)
	observed_at := object.get(enforcement, "independentVerificationObservedAt", null)
	observed_at != null
	max_age := object.get(enforcement, "independentVerificationEvidenceMaxAge", null)
	max_age != null
	age_ns := time.now_ns() - time.parse_rfc3339_ns(observed_at)
	age_ns > iso8601_duration_ns(max_age)
	message := sprintf(
		"spec.enforcement.independentVerificationObservedAt: %q is older than independentVerificationEvidenceMaxAge %q",
		[observed_at, max_age],
	)
}

# RealmIngressBinding (portability.yaml, LOT: subdomain-binding) is optional and carries no
# authority-bearing attribute by construction -- routing correctness is the only thing left to
# enforce here: two RealmTemplates must never claim the same fully-qualified hostname, since a
# collision would misroute one tenant's traffic into another Realm's cell.
deny contains corpus.violation("corpus.realm.ingress-unique", document, message) if {
	some document in corpus.documents_of_kind("RealmTemplate")
	some other in corpus.documents_of_kind("RealmTemplate")
	corpus.path(document) < corpus.path(other)
	ingress := object.get(corpus.spec(document), "ingress", {})
	ingress != {}
	other_ingress := object.get(corpus.spec(other), "ingress", {})
	other_ingress != {}
	ingress.subdomain == other_ingress.subdomain
	ingress.baseDomain == other_ingress.baseDomain
	message := sprintf(
		"spec.ingress: %q.%q already claimed by %s",
		[ingress.subdomain, ingress.baseDomain, corpus.path(other)],
	)
}

valid_realm_exposure_modes := {"PRIVATE_STEALTH", "CLUSTER_SHARED", "PUBLIC_DISCOVERABLE"}

deny contains corpus.violation("corpus.realm.exposure-valid", document, message) if {
	some document in corpus.documents_of_kind("RealmTemplate")
	exposure := object.get(corpus.spec(document), "exposure", null)
	exposure != null
	not exposure in valid_realm_exposure_modes
	message := sprintf("spec.exposure: %q is not a valid RealmExposureMode", [exposure])
}

# Minimal parser for the P[nD]T[nH][nM][nS] subset of ISO-8601 durations this repo's Duration
# fields actually use (e.g. ADR-0028's PT24H default) -- not a general ISO-8601 duration parser.
iso8601_duration_ns(text) := ns if {
	[[_, days, hours, minutes, seconds]] := regex.find_all_string_submatch_n(`^P(?:([0-9]+)D)?(?:T(?:([0-9]+)H)?(?:([0-9]+)M)?(?:([0-9]+)S)?)?$`, text, 1)
	total_seconds := (((iso8601_duration_part(days) * 86400) + (iso8601_duration_part(hours) * 3600)) + (iso8601_duration_part(minutes) * 60)) + iso8601_duration_part(seconds)
	ns := total_seconds * 1000000000
}

iso8601_duration_part("") := 0

iso8601_duration_part(part) := to_number(part) if part != ""

deny contains corpus.violation("corpus.work.dependency-self", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some dependency in corpus.work_deps(corpus.spec(document))
	dependency == corpus.id(document)
	message := sprintf("spec.dependsOnWorkOrderRefs: %q depends on itself", [dependency])
}

deny contains corpus.violation("corpus.work.dependency-resolves", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some dependency in corpus.work_deps(corpus.spec(document))
	not dependency in corpus.ids_of_kind("WorkOrder")
	message := sprintf("spec.dependsOnWorkOrderRefs: no WorkOrder declares id %q", [dependency])
}

deny contains corpus.violation("corpus.work.dependency-cycle", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some dependency in corpus.work_deps(corpus.spec(document))
	dependency != corpus.id(document)
	dependency in corpus.ids_of_kind("WorkOrder")
	corpus.id(document) in graph.reachable(work_dependency_graph, {dependency})
	message := sprintf("spec.dependsOnWorkOrderRefs: dependency cycle reaches %q through %q", [corpus.id(document), dependency])
}

started_state(state) if {
	state in {"IN_PROGRESS", "COMPLETED"}
}

deny contains corpus.violation("corpus.work.dependency-complete", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	started_state(spec.state)
	some dependency in corpus.work_deps(spec)
	target := corpus.document_by_kind_id("WorkOrder", dependency)
	corpus.spec(target).state != "COMPLETED"
	message := sprintf("spec.dependsOnWorkOrderRefs: %q is not COMPLETED while this work is %s", [dependency, spec.state])
}

deny contains corpus.violation("corpus.work.parent-self", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	parent := corpus.work_parent(corpus.spec(document))
	parent == corpus.id(document)
	message := "spec.parentWorkOrderRef: an item cannot decompose itself"
}

forbidden_work_scope := ".jumo/interfaces/"

deny contains corpus.violation("corpus.work.scope-boundary", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some pattern in object.get(corpus.spec(document), "pathScope", [])
	prefix := split(pattern, "*")[0]
	prefix == ""
	message := sprintf("spec.pathScope: %q has no literal prefix", [pattern])
}

deny contains corpus.violation("corpus.work.scope-boundary", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	some pattern in object.get(corpus.spec(document), "pathScope", [])
	prefix := split(pattern, "*")[0]
	prefix != ""
	startswith(forbidden_work_scope, prefix)
	not startswith(prefix, forbidden_work_scope)
	message := sprintf("spec.pathScope: %q is wider than protected root %q", [pattern, forbidden_work_scope])
}

deny contains corpus.violation("corpus.work.scope-boundary", document, message) if {
	some document in corpus.documents
	document.kind == "WorkOrder"
	spec := corpus.spec(document)
	some pattern in object.get(spec, "pathScope", [])
	prefix := split(pattern, "*")[0]
	startswith(prefix, forbidden_work_scope)
	not controlled_interface_scope(spec)
	message := sprintf("spec.pathScope: %q requires ACCEPTED-or-started Ring 1 work with an independent review-capable verifier", [pattern])
}

deny contains corpus.violation("corpus.realm.role-assignment", document, message) if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	role := corpus.document_by_kind_id("RoleDefinition", corpus.assignment_role(corpus.spec(document)))
	corpus.owner_realm(role) != corpus.owner_realm(document)
	message := "spec.roleDefinitionRef: RoleDefinition belongs to another Realm"
}

deny contains corpus.violation("corpus.bearer.federated-peer-ref-required", document, message) if {
	some document in corpus.documents
	document.kind == "RoleAssignment"
	bearer := object.get(corpus.spec(document), "bearer", {})
	bearer.kind == "FEDERATED_PEER"
	corpus.ref_id(object.get(bearer, "federatedPeerRef", "")) == ""
	message := "spec.bearer.federatedPeerRef: required when bearer.kind is FEDERATED_PEER"
}

deny contains corpus.violation("corpus.realm.team-member", document, message) if {
	some document in corpus.documents
	document.kind == "TeamSpec"
	some index, member in object.get(corpus.spec(document), "members", [])
	operator := corpus.member_role(member)
	operator != null
	role := corpus.document_by_kind_id("RoleDefinition", operator)
	corpus.owner_realm(role) != corpus.owner_realm(document)
	message := sprintf("spec.members[%d].roleDefinitionRef: RoleDefinition %q belongs to another Realm", [index, operator])
}

deny contains corpus.violation("corpus.assignment.exactly-one", role, message) if {
	some role in corpus.documents
	role.kind == "RoleDefinition"
	assignments := [assignment |
		some assignment in corpus.documents
		assignment.kind == "RoleAssignment"
		corpus.assignment_role(corpus.spec(assignment)) == corpus.id(role)
		corpus.owner_realm(assignment) == corpus.owner_realm(role)
	]
	count(assignments) != 1
	message := sprintf("RoleDefinition %q requires exactly one assignment; found %d", [corpus.id(role), count(assignments)])
}

# A role has one stable AdvisorProfile. Nestor is deliberately modeled only by its
# ChiefOfStaffProfile: an additional advisor profile would make a second apparent identity.
deny contains corpus.violation("corpus.advisor.one-profile-per-role", profile, message) if {
	some profile in corpus.documents
	profile.kind == "AdvisorProfile"
	role := corpus.ref_id(object.get(corpus.spec(profile), "roleDefinitionRef", null))
	profiles := [other |
		some other in corpus.documents
		other.kind == "AdvisorProfile"
		corpus.ref_id(object.get(corpus.spec(other), "roleDefinitionRef", null)) == role
	]
	count(profiles) != 1
	message := sprintf("role %q requires exactly one AdvisorProfile; found %d", [role, count(profiles)])
}

deny contains corpus.violation("corpus.advisor.nestor-chief-of-staff-only", profile, message) if {
	some profile in corpus.documents
	profile.kind == "AdvisorProfile"
	role := corpus.ref_id(object.get(corpus.spec(profile), "roleDefinitionRef", null))
	some chief in corpus.documents
	chief.kind == "ChiefOfStaffProfile"
	role == corpus.ref_id(object.get(corpus.spec(chief), "roleDefinitionRef", null))
	message := sprintf("role %q is designated by ChiefOfStaffProfile and may not also have an AdvisorProfile", [role])
}

deny contains corpus.violation("corpus.advisor.default-dialogue-option", profile, message) if {
	some profile in corpus.documents
	profile.kind == "AdvisorProfile"
	defaults := [option | some option in object.get(corpus.spec(profile), "dialogueOptions", []); option.defaultOption == true]
	count(defaults) != 1
	message := sprintf("AdvisorProfile %q requires exactly one default dialogue option", [corpus.id(profile)])
}

# An option cannot silently change a role's behaviour: the selected capability requirement,
# engagement worker and assigned agent must all name the same declared contracts.
deny contains corpus.violation("corpus.advisor.option-coherence", profile, message) if {
	some profile in corpus.documents
	profile.kind == "AdvisorProfile"
	role := corpus.ref_id(object.get(corpus.spec(profile), "roleDefinitionRef", null))
	assignment := corpus.document_by_kind_id("RoleAssignment", role)
	bearer := object.get(corpus.spec(assignment), "bearer", {})
	bearer.kind == "AGENT"
	some option in object.get(corpus.spec(profile), "dialogueOptions", [])
	capability := corpus.document_by_kind_id("CapabilityProfile", corpus.ref_id(object.get(option, "capabilityProfileRef", null)))
	engagement := corpus.document_by_kind_id("EngagementMethod", corpus.ref_id(object.get(option, "engagementMethodRef", null)))
	capability_requirement := corpus.ref_id(object.get(corpus.spec(capability), "workerRequirementProfileRef", null))
	engagement_spec := corpus.spec(engagement)
	capability_requirement != corpus.ref_id(object.get(engagement_spec, "workerRequirementProfileRef", null))
	message := "AdvisorProfile dialogue option CapabilityProfile and EngagementMethod have incompatible worker requirements"
}

deny contains corpus.violation("corpus.advisor.option-coherence", profile, message) if {
	some profile in corpus.documents
	profile.kind == "AdvisorProfile"
	role := corpus.ref_id(object.get(corpus.spec(profile), "roleDefinitionRef", null))
	assignment := corpus.document_by_kind_id("RoleAssignment", role)
	bearer := object.get(corpus.spec(assignment), "bearer", {})
	bearer.kind == "AGENT"
	some option in object.get(corpus.spec(profile), "dialogueOptions", [])
	engagement := corpus.document_by_kind_id("EngagementMethod", corpus.ref_id(object.get(option, "engagementMethodRef", null)))
	corpus.ref_id(object.get(corpus.spec(engagement), "agentDefinitionRef", null)) != corpus.ref_id(object.get(bearer, "agentDefinitionRef", null))
	message := "AdvisorProfile dialogue option EngagementMethod names an agent other than the role assignment"
}

deny contains corpus.violation("corpus.identity-binding.same-realm-member", binding, message) if {
	some binding in corpus.documents
	binding.kind == "PrincipalIdentityBinding"
	principal := corpus.document_by_kind_id("Principal", corpus.ref_id(object.get(corpus.spec(binding), "principalRef", null)))
	corpus.owner_realm(principal) != corpus.owner_realm(binding)
	message := "PrincipalIdentityBinding principal must belong to its owner Realm"
}

deny contains corpus.violation("corpus.identity-binding.member-or-owner", binding, message) if {
	some binding in corpus.documents
	binding.kind == "PrincipalIdentityBinding"
	principal := corpus.document_by_kind_id("Principal", corpus.ref_id(object.get(corpus.spec(binding), "principalRef", null)))
	not corpus.spec(principal).principalKind in {"OWNER", "MEMBER"}
	message := "PrincipalIdentityBinding is only valid for an OWNER or MEMBER Principal"
}

deny contains corpus.violation("corpus.interface.write-capability", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface_index, surface in object.get(corpus.spec(document), "surfaces", [])
	proposed := {name | some name in object.get(surface, "proposes", [])}
	some write_index, write in object.get(surface, "writePaths", [])
	not write.capabilityRef in proposed
	message := sprintf(
		"spec.surfaces[%d].writePaths[%d].capabilityRef: %q is not proposed by the surface",
		[surface_index, write_index, write.capabilityRef],
	)
}

deny contains corpus.violation("corpus.interface.immutable-command", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some index, facet in object.get(corpus.spec(document), "facets", [])
	facet.create == "NONE"
	facet.modify == "NONE"
	facet.retire == "NONE"
	count(object.get(facet, "commands", [])) > 0
	message := sprintf("spec.facets[%d]: immutable facet may not declare commands", [index])
}

document_roots := [root |
	some project in corpus.documents
	project.kind == "Project"
	some root in object.get(object.get(corpus.spec(project), "documentation", {}), "roots", [])
]

widest_document_audience_rank := max([corpus.audience_rank(root.maximumAudience) | some root in document_roots])

document_projection(projection) if {
	projection in {"DOCUMENT_TREE", "DOCUMENT_CONTENT"}
}

deny contains corpus.violation("corpus.interface.document-root", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some projection in object.get(surface, "reads", [])
	document_projection(projection)
	count(document_roots) == 0
	message := "document projection requires a declared Project documentation root"
}

deny contains corpus.violation("corpus.interface.document-audience", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some projection in object.get(surface, "reads", [])
	document_projection(projection)
	count(document_roots) > 0
	corpus.audience_rank(surface.audience) > widest_document_audience_rank
	message := "surface audience exceeds every Project documentation root"
}

deny contains corpus.violation("corpus.interface.project-create-path", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == "project.create"
	write.pathGlob != ".jumo/projects/**"
	message := "project.create is confined to .jumo/projects/**"
}

deny contains corpus.violation("corpus.interface.document-proposal-path", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == "document.change.propose"
	not startswith(write.pathGlob, "docs/")
	message := "document.change.propose is confined below docs/"
}

deny contains corpus.violation("corpus.interface.contract-proposal-path", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == "contract.change.propose"
	not startswith(write.pathGlob, ".jumo/")
	message := "contract.change.propose is confined below .jumo/"
}

deny contains corpus.violation("corpus.interface.contract-proposal-editor", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	write.capabilityRef == "contract.change.propose"
	write.editor != "STRUCTURED_YAML"
	message := "contract.change.propose requires STRUCTURED_YAML editing"
}

deny contains corpus.violation("corpus.interface.forbidden-write-root", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	startswith(write.pathGlob, ".jumo/interfaces/")
	message := "surface may not write its own authority root"
}

deny contains corpus.violation("corpus.interface.write-obligations", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface_index, surface in object.get(corpus.spec(document), "surfaces", [])
	some write_index, write in object.get(surface, "writePaths", [])
	capability := corpus.capability_by_name(write.capabilityRef)
	required := {obligation | some obligation in object.get(capability, "requiredObligations", [])}
	carried := {obligation | some obligation in object.get(write, "requiredObligations", [])}
	missing := required - carried
	count(missing) > 0
	message := sprintf(
		"spec.surfaces[%d].writePaths[%d].requiredObligations drops %s",
		[surface_index, write_index, concat(", ", sort(missing))],
	)
}

deny contains corpus.violation("corpus.interface.no-self-write", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	glob.match(write.pathGlob, [], corpus.path(document))
	message := sprintf("write path %q matches the InterfaceSurface document itself", [write.pathGlob])
}

deny contains corpus.violation("corpus.interface.ring-ceiling", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	some write in object.get(surface, "writePaths", [])
	capability := corpus.capability_by_name(write.capabilityRef)
	ceiling := object.get(capability, "ringCeiling", null)
	ceiling != null
	corpus.ring_rank(write.ring) > corpus.ring_rank(ceiling)
	message := sprintf("write ring %s exceeds capability %q ceiling %s", [write.ring, write.capabilityRef, ceiling])
}

theme_keys contains key if {
	some document in corpus.documents
	document.kind == "ThemePack"
	some entry in object.get(corpus.spec(document), "terminology", [])
	key := entry.roleKey
}

theme_keys contains key if {
	some document in corpus.documents
	document.kind == "ThemePack"
	visualization := object.get(corpus.spec(document), "visualization", {})
	some key, _ in visualization
}

deny contains corpus.violation("corpus.interface.presence", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	some surface in object.get(corpus.spec(document), "surfaces", [])
	presence := object.get(surface, "presenceRef", null)
	presence != null
	not presence in theme_keys
	message := sprintf("presenceRef %q is absent from ThemePack keys", [presence])
}

deny contains corpus.violation("corpus.self-description.narration", document, message) if {
	some document in corpus.documents
	document.kind == "SelfDescription"
	some index, answer in object.get(corpus.spec(document), "answers", [])
	narration := object.get(answer, "narrationPromptRef", null)
	narration != null
	not narration in corpus.ids_of_kind("PromptTemplate")
	message := sprintf("spec.answers[%d].narrationPromptRef does not resolve", [index])
}

deny contains corpus.violation("corpus.documentation-root.monotonic", document, message) if {
	some document in corpus.documents
	document.kind == "Project"
	roots := object.get(object.get(corpus.spec(document), "documentation", {}), "roots", [])
	some inner in roots
	some outer in roots
	inner.path != outer.path
	startswith(inner.path, sprintf("%s/", [outer.path]))
	corpus.audience_rank(inner.maximumAudience) > corpus.audience_rank(outer.maximumAudience)
	message := "nested documentation root widens its parent audience"
}

# LOT 4 — Shared repository co-governance: every co-owner Realm must mirror the binding.
deny contains corpus.violation("corpus.project.mutual-repo-binding", document, message) if {
	some document in corpus.documents
	document.kind == "Project"
	some binding in object.get(corpus.spec(document), "repositoryBindings", [])
	some co_realm in object.get(binding, "coOwnerRealms", [])

	# The co-owner Realm must have at least one Project with a repositoryBinding pointing at the same repository.
	not any_realm_project_binds_repo(co_realm, binding.repository)
	message := sprintf(
		"spec.repositoryBindings[%s].coOwnerRealms: Realm %q has no matching binding for repository %q",
		[binding.id, co_realm, binding.repository],
	)
}

any_realm_project_binds_repo(realm_id, repository) if {
	some project in corpus.documents
	project.kind == "Project"
	corpus.owner_realm(project) == realm_id
	some b in object.get(corpus.spec(project), "repositoryBindings", [])
	b.repository == repository
}

# LOT 5 — External federation requires the Realm to opt into PUBLIC_DISCOVERABLE exposure.
deny contains corpus.violation("corpus.federation.peer-requires-discoverable-exposure", document, message) if {
	some document in corpus.documents
	document.kind == "FederatedPeer"
	owner_realm_id := corpus.owner_realm(document)
	realm_template := corpus.document_by_kind_id("RealmTemplate", owner_realm_id)
	exposure := object.get(corpus.spec(realm_template), "exposure", "PRIVATE_STEALTH")
	exposure != "PUBLIC_DISCOVERABLE"
	message := sprintf(
		"FederatedPeer requires ownerRealm %q to declare exposure: PUBLIC_DISCOVERABLE (current: %q)",
		[owner_realm_id, exposure],
	)
}

# LOT 3 — Execution Cell workspace isolation: a cell may only mount PersonalSpaces owned by its own Realm.
deny contains corpus.violation("corpus.cell.workspace-realm-scoped", document, message) if {
	some document in corpus.documents
	document.kind == "ExecutionCell"
	some ref in object.get(corpus.spec(document), "mountedPersonalSpaceRefs", [])
	personal_space := corpus.document_by_kind_id("PersonalSpace", ref)
	corpus.owner_realm(personal_space) != corpus.owner_realm(document)
	message := sprintf(
		"spec.mountedPersonalSpaceRefs: PersonalSpace %q belongs to another Realm",
		[ref],
	)
}
