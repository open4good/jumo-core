package jumo.corpus_execution_test

import rego.v1

document(path, kind, identifier, spec) := {
	"path": path,
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": kind,
		"metadata": {"id": identifier, "namespace": "dev.jumo.test"},
		"spec": spec,
	},
}

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

execution_base := [
	document(".jumo/realms/home.yml", "RealmTemplate", "home", {}),
	document(
		".jumo/capabilities/core.yml",
		"ActionCapabilitySet",
		"core",
		{"capabilities": [{"name": "document.change.propose", "producesExternalEffect": true}]},
	),
]

test_process_effect_requires_ordered_gates if {
	process := document(
		".jumo/processes/bad.yml",
		"ProcessSpec",
		"bad",
		{
			"inputType": "ChangeProposalRef", "outputType": "ForgeProjectionRef", "steps": [
				{"id": "start", "kind": "START"}, {"id": "effect", "kind": "SERVICE", "capabilityRef": "document.change.propose"}, {"id": "end", "kind": "END", "terminalState": "COMPLETED"},
			],
			"flows": [{"id": "a", "from": "start", "to": "effect", "payloadType": "ChangeProposalRef"}, {"id": "b", "from": "effect", "to": "end", "payloadType": "ForgeProjectionRef"}],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [process])
	has_rule(violations, "corpus.process.effect-gates")
}

test_execution_cell_provisioning_effect_requires_ordered_gates_and_ring_ceiling if {
	# LOT 4: execution.cell.vm.provision and execution.cell.certificate.ceremony both produce an
	# external effect (real virt-install / certificate material), so they fall under the same
	# product-graph dominance proof as document.change.propose above -- a SERVICE step naming
	# either one must be unreachable except after jumo.authz.decision then capability.grant.acquire.
	# The bad process below reaches step-vm directly from START (no gateway, no grant) and
	# gives step-ceremony a ring above its capability's RING_1_CONTROL_PLANE ceiling.
	cell_capabilities := document(
		".jumo/capabilities/cell.yml",
		"ActionCapabilitySet",
		"cell",
		{"capabilities": [
			{"name": "execution.cell.vm.provision", "producesExternalEffect": true, "ringCeiling": "RING_1_CONTROL_PLANE"},
			{"name": "execution.cell.certificate.ceremony", "producesExternalEffect": true, "ringCeiling": "RING_1_CONTROL_PLANE"},
		]},
	)
	process := document(
		".jumo/processes/bad-cell.yml",
		"ProcessSpec",
		"bad-cell",
		{
			"inputType": "ExecutionCellProvisioningRef", "outputType": "ExecutionCellProvisioningRef",
			"steps": [
				{"id": "start", "kind": "START"},
				{"id": "step-vm", "kind": "SERVICE", "capabilityRef": "execution.cell.vm.provision"},
				{"id": "step-ceremony", "kind": "SERVICE", "capabilityRef": "execution.cell.certificate.ceremony", "ring": "RING_0_ROOT_OF_TRUST"},
				{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
			],
			"flows": [
				{"id": "a", "from": "start", "to": "step-vm", "payloadType": "ExecutionCellProvisioningRef"},
				{"id": "b", "from": "step-vm", "to": "step-ceremony", "payloadType": "ExecutionCellProvisioningRef"},
				{"id": "c", "from": "step-ceremony", "to": "end", "payloadType": "ExecutionCellProvisioningRef"},
			],
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [cell_capabilities, process])
	has_rule(violations, "corpus.process.effect-gates")
	has_rule(violations, "corpus.process.ring-ceiling")
}

test_provider_terms_are_evaluated_against_injected_date if {
	context := {"path": "policy-context.json", "contents": {"jumoPolicyContext": {"now": "2026-08-12"}}}
	provider := document(
		".jumo/providers/bad.yml",
		"ProviderAccount",
		"bad",
		{
			"entitlement": {"usePermissions": {"holderOperated": {
				"termsReview": {"reviewedAt": "2026-01-01", "validUntil": "2026-02-01"},
			}}},
		},
	)
	violations := data.jumo.corpus.deny with input as array.flatten([execution_base, [provider, context]])
	has_rule(violations, "corpus.provider.terms-expired")
}

test_worker_access_modes_fail_closed if {
	worker := document(
		".jumo/workers/bad.yml",
		"WorkerSubstrate",
		"bad",
		{
			"ownerRealm": "home",
			"modelAccess": {"mode": "GATEWAY_ROUTED", "credentialSource": "PLAN_SESSION_ONLY"},
		},
	)
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [worker])
	has_rule(violations, "corpus.worker.gateway")
	has_rule(violations, "corpus.worker.gateway-credential")
}

test_cli_substrate_contract_fails_closed if {
	# No spec.cli, a workspace a model worker may not have, and a plan-direct access mode pointed at
	# a gateway-routed account whose own routing still names a gateway.
	account := document(".jumo/providers/plan.yml", "ProviderAccount", "plan", {
		"independenceGroup": "anthropic",
		"routing": {"mode": "PLAN_DIRECT", "gatewayRef": "provider-egress"},
	})
	cli := document(".jumo/worker-substrates/cli.yml", "WorkerSubstrate", "cli", {
		"ownerRealm": "home",
		"substrate": "LOCAL_CLI_CONTAINER",
		"isolation": {"workspace": "WRITABLE"},
		"modelAccess": {
			"mode": "GATEWAY_ROUTED", "providerAccountRef": "plan",
			"credentialSource": "GATEWAY_TOKEN_ONLY", "gatewayRef": "provider-egress",
		},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [account, cli])
	has_rule(violations, "corpus.provider.direct-gateway")
	has_rule(violations, "corpus.worker.account-mode")
	has_rule(violations, "corpus.worker.cli-declared")
	has_rule(violations, "corpus.worker.cli-machine")
}

test_model_worker_may_not_acquire_a_workspace if {
	worker := document(".jumo/worker-substrates/greedy.yml", "WorkerSubstrate", "greedy", {
		"ownerRealm": "home",
		"substrate": "MODEL_WORKER_PROCESS",
		"isolation": {"workspace": "WRITABLE"},
		"modelAccess": {
			"mode": "GATEWAY_ROUTED", "credentialSource": "OPENBAO_RENDERED_FILE",
			"gatewayRef": "provider-egress", "secretBindingRef": "missing",
		},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [worker])
	has_rule(violations, "corpus.worker.model-worker-workspace")
}

test_prompt_cannot_widen_agent_capabilities if {
	agent := document(
		".jumo/agents/a.yml",
		"AgentDefinition",
		"a",
		{"requestedCapabilities": []},
	)
	prompt := document(
		".jumo/prompts/bad.yml",
		"PromptTemplate",
		"bad",
		{
			"archetype": "a",
			"mayProposeCapabilities": ["document.change.propose"],
			"output": {"form": "FREE_TEXT"},
		},
	)
	violations := data.jumo.corpus.deny with input as array.flatten([execution_base, [agent, prompt]])
	has_rule(violations, "corpus.prompt.capability-widening")
	has_rule(violations, "corpus.prompt.structured-output")
}

test_process_semantics_reject_invalid_graph if {
	bad := document(".jumo/processes/bad.yml", "ProcessSpec", "bad", {"inputType": "Unknown", "outputType": "ForgeProjectionRef", "steps": [{"id": "start", "kind": "START"}], "flows": [{"id": "broken", "from": "start", "to": "missing", "payloadType": "Unknown"}]})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [bad])
	has_rule(violations, "corpus.process.graph-shape")
	has_rule(violations, "corpus.process.flow")
	has_rule(violations, "corpus.process.type")
}

test_process_effect_dominance_rejects_policy_bypass if {
	bad := document(".jumo/processes/bypass.yml", "ProcessSpec", "bypass", {
		"inputType": "ChangeProposalRef", "outputType": "ForgeProjectionRef", "steps": [
			{"id": "start", "kind": "START"},
			{"id": "policy", "kind": "GATEWAY", "gatewayMode": "EXCLUSIVE", "gatewayRole": "SPLIT", "opaEntrypoint": "jumo.authz.decision"},
			{"id": "grant", "kind": "SERVICE", "capabilityRef": "capability.grant.acquire"},
			{"id": "effect", "kind": "SERVICE", "capabilityRef": "document.change.propose"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [
			{"id": "a", "from": "start", "to": "policy", "payloadType": "ChangeProposalRef"},
			{"id": "b", "from": "policy", "to": "grant", "payloadType": "ChangeProposalRef"},
			{"id": "c", "from": "grant", "to": "effect", "payloadType": "ChangeProposalRef"},
			{"id": "bypass", "from": "start", "to": "effect", "payloadType": "ChangeProposalRef"},
			{"id": "d", "from": "effect", "to": "end", "payloadType": "ForgeProjectionRef"},
		],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [bad])
	has_rule(violations, "corpus.process.effect-gates")
}

test_process_rejects_unknown_capability_gateway_and_cycle if {
	bad := document(".jumo/processes/bad.yml", "ProcessSpec", "bad", {
		"inputType": "ChangeProposalRef", "outputType": "ForgeProjectionRef", "steps": [
			{"id": "start", "kind": "START"},
			{"id": "gateway", "kind": "GATEWAY", "gatewayMode": "EXCLUSIVE", "gatewayRole": "SPLIT", "opaEntrypoint": "unknown.rule"},
			{"id": "unknown", "kind": "SERVICE", "capabilityRef": "unknown.capability", "ring": "RING_0_ROOT_OF_TRUST"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [
			{"id": "a", "from": "start", "to": "gateway", "payloadType": "ChangeProposalRef"},
			{"id": "cycle", "from": "gateway", "to": "start", "payloadType": "ChangeProposalRef"},
			{"id": "b", "from": "gateway", "to": "unknown", "payloadType": "ChangeProposalRef"},
			{"id": "c", "from": "unknown", "to": "end", "payloadType": "ForgeProjectionRef"},
		],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [bad])
	has_rule(violations, "corpus.process.gateway")
	has_rule(violations, "corpus.process.loop")
	has_rule(violations, "corpus.process.capability")
}

# JourneyVerificationSpec is a flat document (capability/targetType at the top level, not nested
# under spec -- additionalProperties: false in the generated schema rejects a spec: key), unlike
# most other kinds, so this cannot reuse the document() helper above.
test_journey_verification_rejects_unknown_capability if {
	bad := {"path": ".jumo/journey-verifications/bad.yml", "contents": {
		"apiVersion": "jumo.dev/v1", "kind": "JourneyVerificationSpec",
		"metadata": {"id": "bad", "namespace": "dev.jumo.test"},
		"targetType": "PROVIDER_ACCOUNT", "capability": "unknown.capability",
	}}
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [bad])
	has_rule(violations, "corpus.journey-verification.capability")
}

test_journey_verification_accepts_declared_capability if {
	good := {"path": ".jumo/journey-verifications/good.yml", "contents": {
		"apiVersion": "jumo.dev/v1", "kind": "JourneyVerificationSpec",
		"metadata": {"id": "good", "namespace": "dev.jumo.test"},
		"targetType": "PROVIDER_ACCOUNT", "capability": "document.change.propose",
	}}
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [good])
	not has_rule(violations, "corpus.journey-verification.capability")
}

test_provider_routing_and_terms_fail_closed if {
	context := {"path": "policy-context.json", "contents": {"jumoPolicyContext": {"now": "2026-08-12"}}}
	other := document(".jumo/providers/other.yml", "ProviderAccount", "other", {"independenceGroup": "other"})
	bad := document(".jumo/providers/bad.yml", "ProviderAccount", "bad", {
		"independenceGroup": "primary", "alternativeProviderAccountRefs": [{"id": "missing"}, {"id": "other"}],
		"routing": {"platformRef": {"id": "missing"}},
		"entitlement": {"usePermissions": {
			"holderOperated": {"termsReview": {"reviewedAt": "2027-01-01", "validUntil": "2027-06-01"}},
			"jumoManaged": {"termsReview": {"reviewedAt": "2026-08-01", "validUntil": "2026-01-01"}},
		}},
	})
	violations := data.jumo.corpus.deny with input as array.flatten([execution_base, [other, bad, context]])
	every rule in {
		"corpus.provider.terms-order", "corpus.provider.terms-future",
		"corpus.provider.terms-expired", "corpus.provider.terms-window",
		"corpus.provider.platform-resolves",
		"corpus.provider.alternative",
	} {
		has_rule(violations, rule)
	}
}

test_worker_and_prompt_references_fail_closed if {
	account := document(".jumo/providers/account.yml", "ProviderAccount", "account", {"entitlement": {"usePermissions": {}}})
	connector := document(".jumo/connectors/effects.yml", "ConnectorDefinition", "effects", {"operations": [{"id": "apply", "capabilityRef": "document.change.propose"}]})
	workers := [
		document(".jumo/workers/missing-account.yml", "WorkerSubstrate", "missing-account", {"modelAccess": {"providerAccountRef": "missing"}}),
		document(".jumo/workers/direct.yml", "WorkerSubstrate", "direct", {"modelAccess": {"mode": "PLAN_DIRECT", "gatewayRef": "forbidden", "credentialSource": "GATEWAY_TOKEN_ONLY"}}),
		document(".jumo/workers/commercial.yml", "WorkerSubstrate", "commercial", {"lifecycle": "ENABLED", "usageContext": "COMMERCIAL", "accountUse": "HOLDER_OPERATED", "modelAccess": {"providerAccountRef": "account"}}),
		document(".jumo/workers/operations.yml", "WorkerSubstrate", "operations", {"isolation": {"workspace": "ABSENT"}, "grantedOperationRefs": [{"connectorRef": "missing", "operationRef": "missing"}, {"connectorRef": "effects", "operationRef": "apply"}]}),
	]
	prompt_missing := document(".jumo/prompts/missing.yml", "PromptTemplate", "missing", {"archetype": "missing", "budgetRef": "missing", "workerRequirementRef": "missing"})
	violations := data.jumo.corpus.deny with input as array.flatten([execution_base, [account, connector, prompt_missing], workers])
	every rule in {
		"corpus.worker.account", "corpus.worker.direct-gateway", "corpus.worker.direct-credential",
		"corpus.worker.commercial-entitlement", "corpus.worker.workspace-absent",
		"corpus.worker.operation", "corpus.worker.external-effect",
		"corpus.prompt.agent", "corpus.prompt.reference",
	} {
		has_rule(violations, rule)
	}
}

facts_with_selection_intent_proposal := {
	"path": "repository-facts.json",
	"contents": {"jumoRepositoryFacts": {
		"classSlots": {"SelectionIntentProposal": []},
		"javaSources": [{"path": "modules/jumo-model/src/main/java/dev/jumo/model/SelectionIntentProposal.java", "text": ""}],
	}},
}

test_accepts_structured_prompt_with_resolvable_schema_and_java_type if {
	agent := document(".jumo/agents/agent.yml", "AgentDefinition", "agent", {})
	ok := document(".jumo/prompts/ok.yml", "PromptTemplate", "ok", {
		"archetype": "agent",
		"output": {"form": "STRUCTURED", "schemaRef": "SelectionIntentProposal", "javaType": "dev.jumo.model.SelectionIntentProposal"},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [facts_with_selection_intent_proposal, agent, ok])
	not has_rule(violations, "corpus.prompt.structured-schema")
	not has_rule(violations, "corpus.prompt.structured-java-type")
}

test_rejects_structured_prompt_with_unresolvable_schema_ref if {
	agent := document(".jumo/agents/agent.yml", "AgentDefinition", "agent", {})
	bad := document(".jumo/prompts/bad.yml", "PromptTemplate", "bad", {
		"archetype": "agent", "output": {"form": "STRUCTURED", "schemaRef": "NoSuchClass"},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [facts_with_selection_intent_proposal, agent, bad])
	has_rule(violations, "corpus.prompt.structured-schema")
}

test_rejects_structured_prompt_with_unresolvable_java_type if {
	agent := document(".jumo/agents/agent.yml", "AgentDefinition", "agent", {})
	bad := document(".jumo/prompts/bad.yml", "PromptTemplate", "bad", {
		"archetype": "agent", "output": {"form": "STRUCTURED", "javaType": "dev.jumo.model.NoSuchRecord"},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [facts_with_selection_intent_proposal, agent, bad])
	has_rule(violations, "corpus.prompt.structured-java-type")
}

test_execution_cell_and_tool_authority_rules if {
	bad_worker := document(".jumo/workers/bad-authority.yml", "WorkerSubstrate", "bad-authority", {
		"ownerRealm": "home",
		"ambientToolAuthority": "ENABLED",
		"projectedToolAuthority": "FULL",
	})
	bad_cell := document(".jumo/cells/bad-cell.yml", "ExecutionCell", "bad-cell", {
		"ownerRealm": "home",
		"placement": "INVALID_PLACEMENT",
		"credentialCustody": "JUMO_STORED",
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [bad_worker, bad_cell])
	has_rule(violations, "corpus.worker.ambient-tool-authority")
	has_rule(violations, "corpus.worker.projected-tool-authority")
	has_rule(violations, "corpus.cell.credential-custody")
	has_rule(violations, "corpus.cell.placement")
}

test_provider_platform_catalog_happy_path_has_no_denials if {
	platform := document(".jumo/provider-platforms/openai.yml", "ProviderPlatform", "openai", {
		"wireProtocol": "OPENAI_RESPONSES", "egressRouteId": "openai", "upstreamHost": "api.openai.com",
		"completionPath": "/openai/v1/responses", "modelCatalogPath": "/openai/v1/models",
		"credentialHeader": "AUTHORIZATION_BEARER", "independenceGroup": "openai", "hostDeclaredByAccount": false,
		"defaultEffortLadder": [{"rung": "LOW", "modelAlias": "gpt-5-mini"}, {"rung": "HIGH", "modelAlias": "gpt-5"}],
	})
	account := document(".jumo/providers/openai-primary.yml", "ProviderAccount", "openai-primary", {
		"independenceGroup": "openai",
		"routing": {"mode": "GATEWAY_ROUTED", "gatewayRef": "provider-egress", "priority": 10, "platformRef": {"id": "openai"}},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [platform, account])
	not has_rule(violations, "corpus.provider.platform-resolves")
	not has_rule(violations, "corpus.provider.effort-ladder-empty")
	not has_rule(violations, "corpus.provider.upstream-host-required")
	not has_rule(violations, "corpus.provider.upstream-host-forbidden")
}

test_provider_platform_aggregator_requires_account_declared_host if {
	platform := document(".jumo/provider-platforms/openai-compatible.yml", "ProviderPlatform", "openai-compatible", {
		"wireProtocol": "OPENAI_RESPONSES", "egressRouteId": "openai-compatible",
		"completionPath": "/v1/responses", "modelCatalogPath": "/v1/models",
		"credentialHeader": "AUTHORIZATION_BEARER", "independenceGroup": "openai-compatible", "hostDeclaredByAccount": true,
		"defaultEffortLadder": [{"rung": "LOW", "modelAlias": "default"}],
	})
	missing_host := document(".jumo/providers/aggregator.yml", "ProviderAccount", "aggregator", {
		"independenceGroup": "openai-compatible",
		"routing": {"mode": "GATEWAY_ROUTED", "gatewayRef": "provider-egress", "priority": 40, "platformRef": {"id": "openai-compatible"}},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [platform, missing_host])
	has_rule(violations, "corpus.provider.upstream-host-required")
}

test_provider_platform_integrated_forbids_account_declared_host if {
	platform := document(".jumo/provider-platforms/openai.yml", "ProviderPlatform", "openai", {
		"wireProtocol": "OPENAI_RESPONSES", "egressRouteId": "openai", "upstreamHost": "api.openai.com",
		"completionPath": "/openai/v1/responses", "modelCatalogPath": "/openai/v1/models",
		"credentialHeader": "AUTHORIZATION_BEARER", "independenceGroup": "openai", "hostDeclaredByAccount": false,
		"defaultEffortLadder": [{"rung": "LOW", "modelAlias": "gpt-5-mini"}],
	})
	stray_host := document(".jumo/providers/stray.yml", "ProviderAccount", "stray", {
		"independenceGroup": "openai",
		"routing": {
			"mode": "GATEWAY_ROUTED", "gatewayRef": "provider-egress", "priority": 41,
			"platformRef": {"id": "openai"}, "upstreamHost": "evil.example.com",
		},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [platform, stray_host])
	has_rule(violations, "corpus.provider.upstream-host-forbidden")
}

test_provider_account_inherits_platform_effort_ladder if {
	platform := document(".jumo/provider-platforms/openai.yml", "ProviderPlatform", "openai", {
		"wireProtocol": "OPENAI_RESPONSES", "egressRouteId": "openai", "upstreamHost": "api.openai.com",
		"completionPath": "/openai/v1/responses", "modelCatalogPath": "/openai/v1/models",
		"credentialHeader": "AUTHORIZATION_BEARER", "independenceGroup": "openai", "hostDeclaredByAccount": false,
		"defaultEffortLadder": [{"rung": "LOW", "modelAlias": "gpt-5-mini"}, {"rung": "HIGH", "modelAlias": "gpt-5"}],
	})
	account := document(".jumo/providers/inherits.yml", "ProviderAccount", "inherits", {
		"independenceGroup": "openai",
		"routing": {"mode": "GATEWAY_ROUTED", "gatewayRef": "provider-egress", "priority": 42, "platformRef": {"id": "openai"}},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [platform, account])
	not has_rule(violations, "corpus.provider.effort-ladder-empty")
}

test_provider_account_with_no_ladder_and_no_platform_fails_closed if {
	account := document(".jumo/providers/orphan.yml", "ProviderAccount", "orphan", {
		"independenceGroup": "orphan",
		"routing": {"mode": "GATEWAY_ROUTED", "gatewayRef": "provider-egress", "priority": 43},
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [account])
	has_rule(violations, "corpus.provider.platform-required-for-gateway")
	has_rule(violations, "corpus.provider.effort-ladder-empty")
}

test_provider_platform_duplicate_rung_rejected if {
	platform := document(".jumo/provider-platforms/dup.yml", "ProviderPlatform", "dup", {
		"wireProtocol": "OPENAI_RESPONSES", "egressRouteId": "dup", "upstreamHost": "example.com",
		"completionPath": "/v1/responses", "modelCatalogPath": "/v1/models",
		"credentialHeader": "AUTHORIZATION_BEARER", "independenceGroup": "dup", "hostDeclaredByAccount": false,
		"defaultEffortLadder": [{"rung": "LOW", "modelAlias": "a"}, {"rung": "LOW", "modelAlias": "b"}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [platform])
	has_rule(violations, "corpus.platform.effort-ladder-rung-unique")
}

test_qualified_cli_tool_without_cli_rejected if {
	tool := document(".jumo/cli-tools/nocli.yml", "CliToolDefinition", "nocli", {
		"toolName": "nocli", "qualification": "QUALIFIED",
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [tool])
	has_rule(violations, "corpus.cli-tool.qualified-declares-cli")
}

test_declarable_only_cli_tool_without_cli_accepted if {
	tool := document(".jumo/cli-tools/later.yml", "CliToolDefinition", "later", {
		"toolName": "later", "qualification": "DECLARABLE_ONLY",
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [tool])
	not has_rule(violations, "corpus.cli-tool.qualified-declares-cli")
}

test_two_qualified_tools_claiming_one_engine_rejected if {
	first := document(".jumo/cli-tools/one.yml", "CliToolDefinition", "one", {
		"toolName": "one", "qualification": "QUALIFIED", "cli": "GEMINI_CLI",
	})
	second := document(".jumo/cli-tools/two.yml", "CliToolDefinition", "two", {
		"toolName": "two", "qualification": "QUALIFIED", "cli": "GEMINI_CLI",
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [first, second])
	has_rule(violations, "corpus.cli-tool.qualified-cli-unique")
}

test_two_prompts_claiming_one_conversation_task_rejected if {
	first := document(".jumo/prompts/one.yml", "PromptTemplate", "one", {"conversationTask": "COORDINATE"})
	second := document(".jumo/prompts/two.yml", "PromptTemplate", "two", {"conversationTask": "COORDINATE"})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [first, second])
	has_rule(violations, "corpus.prompt.conversation-task-unique")
}

test_one_prompt_per_conversation_task_accepted if {
	one := document(".jumo/prompts/one.yml", "PromptTemplate", "one", {"conversationTask": "COORDINATE"})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [one])
	not has_rule(violations, "corpus.prompt.conversation-task-unique")
}

test_two_playbooks_claiming_one_capability_rejected if {
	first := document(".jumo/machine-admin-playbooks/one.yml", "MachineAdminPlaybook", "one", {"appliesToCapability": "execution.cell.vm.provision"})
	second := document(".jumo/machine-admin-playbooks/two.yml", "MachineAdminPlaybook", "two", {"appliesToCapability": "execution.cell.vm.provision"})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [first, second])
	has_rule(violations, "corpus.machine-admin-playbook.capability-unique")
}

test_one_playbook_per_capability_accepted if {
	one := document(".jumo/machine-admin-playbooks/one.yml", "MachineAdminPlaybook", "one", {"appliesToCapability": "execution.cell.vm.provision"})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [one])
	not has_rule(violations, "corpus.machine-admin-playbook.capability-unique")
}

user_provided_machine := document(".jumo/execution-machines/laptop.yml", "ExecutionMachine", "laptop", {
	"ownerRealm": "home", "origin": "USER_PROVIDED", "environment": "LOCAL_DEV", "desiredState": "ACTIVE",
})

managed_machine := document(".jumo/execution-machines/managed.yml", "ExecutionMachine", "managed", {
	"ownerRealm": "home", "origin": "JUMO_MANAGED_LOCAL", "environment": "LOCAL_DEV", "desiredState": "ACTIVE",
})

system_effect_policy(machine_id) := document(".jumo/system-effect-policies/one.yml", "SystemEffectPolicy", "one", {
	"ownerRealm": "home", "machineRef": {"kind": "ExecutionMachine", "id": machine_id}, "optedIn": true,
	"lastTestedRestoreAt": "2026-08-01T00:00:00Z",
	"restoreProcedureDigest": "sha256:0000000000000000000000000000000000000000000000000000000000000000",
	"restoreAttestationMaxAge": "P30D",
})

test_system_effect_policy_for_user_provided_machine_accepted if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [user_provided_machine, system_effect_policy("laptop")])
	not has_rule(violations, "corpus.system-effect-policy.origin-user-provided")
}

test_system_effect_policy_for_managed_machine_rejected if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [managed_machine, system_effect_policy("managed")])
	has_rule(violations, "corpus.system-effect-policy.origin-user-provided")
}

test_two_system_effect_policies_for_one_machine_rejected if {
	first := system_effect_policy("laptop")
	second := object.union(system_effect_policy("laptop"), {"path": ".jumo/system-effect-policies/two.yml", "contents": object.union(system_effect_policy("laptop").contents, {"metadata": {"id": "two", "namespace": "dev.jumo.test"}})})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [user_provided_machine, first, second])
	has_rule(violations, "corpus.system-effect-policy.machine-unique")
}

test_system_effect_policy_with_unresolved_machine_rejected if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [system_effect_policy("ghost")])
	has_rule(violations, "corpus.reference.kind-id")
}

remote_machine(allowlist) := document(".jumo/execution-machines/registry.yml", "ExecutionMachine", "registry", {
	"ownerRealm": "registry", "origin": "JUMO_MANAGED_CLOUD_RESERVED", "environment": "REMOTE", "desiredState": "DECLARED",
	"network": {"outboundControlUrl": "https://control-plane.internal", "egressAllowlist": allowlist},
})

test_https_only_egress_allowlist_accepted if {
	machine := remote_machine(["https://control-plane.internal", "https://registry.modelcontextprotocol.io"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	not has_rule(violations, "corpus.machine.egress-scheme")
}

test_non_https_egress_entry_rejected if {
	machine := remote_machine(["https://control-plane.internal", "ftp://example.com"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	has_rule(violations, "corpus.machine.egress-scheme")
}

test_control_url_in_allowlist_accepted if {
	machine := remote_machine(["https://control-plane.internal"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	not has_rule(violations, "corpus.machine.egress-control-url")
}

test_control_url_missing_from_allowlist_rejected if {
	machine := remote_machine(["https://registry.modelcontextprotocol.io"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	has_rule(violations, "corpus.machine.egress-control-url")
}

test_remote_machine_with_allowlist_accepted if {
	machine := remote_machine(["https://control-plane.internal"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	not has_rule(violations, "corpus.machine.egress-required-remote")
}

test_remote_machine_without_allowlist_rejected if {
	machine := document(".jumo/execution-machines/registry.yml", "ExecutionMachine", "registry", {
		"ownerRealm": "registry", "origin": "JUMO_MANAGED_CLOUD_RESERVED", "environment": "REMOTE", "desiredState": "DECLARED",
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	has_rule(violations, "corpus.machine.egress-required-remote")
}

test_egress_entry_without_wildcard_accepted if {
	machine := remote_machine(["https://control-plane.internal"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	not has_rule(violations, "corpus.machine.egress-wildcard")
}

test_egress_entry_with_wildcard_rejected if {
	machine := remote_machine(["https://control-plane.internal", "https://*.example.com"])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [machine])
	has_rule(violations, "corpus.machine.egress-wildcard")
}

registry_binding_fixtures := [
	document(".jumo/mcp-registry-sources/official.yml", "McpRegistrySource", "official", {
		"sourceType": "OFFICIAL_REGISTRY", "adapter": "official-registry-v0.1", "lifecycle": "ENABLED",
		"baseUrlAllowlist": ["https://registry.modelcontextprotocol.io"],
		"syncMode": "FULL_THEN_INCREMENTAL", "cadence": "PT1H",
	}),
	remote_machine(["https://control-plane.internal", "https://registry.modelcontextprotocol.io"]),
]

test_registry_source_covered_by_machine_allowlist_accepted if {
	binding := document(".jumo/mcp-registry-source-bindings/official.yml", "McpRegistrySourceBinding", "official", {
		"ownerRealm": "registry",
		"mcpRegistrySourceRef": {"kind": "McpRegistrySource", "namespace": "dev.jumo.test", "id": "official"},
		"executionMachineRef": {"kind": "ExecutionMachine", "namespace": "dev.jumo.test", "id": "registry"},
		"lifecycle": "ENABLED",
		"workOrderRef": {"kind": "WorkOrder", "namespace": "home.jumo.dev", "id": "official-sync"},
		"roleDefinitionRef": {"kind": "RoleDefinition", "namespace": "dev.jumo.core", "id": "implementer"},
	})
	violations := data.jumo.corpus.deny with input as array.concat(registry_binding_fixtures, [binding])
	not has_rule(violations, "corpus.registry-source.base-url-allowlisted")
}

test_registry_source_uncovered_by_machine_allowlist_rejected if {
	narrow_machine := remote_machine(["https://control-plane.internal"])
	binding := document(".jumo/mcp-registry-source-bindings/official.yml", "McpRegistrySourceBinding", "official", {
		"ownerRealm": "registry",
		"mcpRegistrySourceRef": {"kind": "McpRegistrySource", "namespace": "dev.jumo.test", "id": "official"},
		"executionMachineRef": {"kind": "ExecutionMachine", "namespace": "dev.jumo.test", "id": "registry"},
		"lifecycle": "ENABLED",
		"workOrderRef": {"kind": "WorkOrder", "namespace": "home.jumo.dev", "id": "official-sync"},
		"roleDefinitionRef": {"kind": "RoleDefinition", "namespace": "dev.jumo.core", "id": "implementer"},
	})
	source := registry_binding_fixtures[0]
	violations := data.jumo.corpus.deny with input as array.concat([source, narrow_machine], [binding])
	has_rule(violations, "corpus.registry-source.base-url-allowlisted")
}

# ExecutionToolchain (execution-toolchain-contract-foundations)

toolchain_ref(id) := {"kind": "ExecutionToolchain", "namespace": "dev.jumo.test", "id": id}

execution_toolchain(id, realm, digest, tools) := document(
	sprintf(".jumo/execution-toolchains/%s.yml", [id]),
	"ExecutionToolchain",
	id,
	{
		"ownerRealm": realm,
		"artifact": {"reference": "oci://example.test/toolchain", "digest": digest},
		"tools": tools,
		"lifecycle": "ENABLED",
	},
)

valid_toolchain_digest := "sha256:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"

test_toolchain_with_pinned_digest_and_tools_accepted if {
	toolchain := execution_toolchain("toolchain-a", "home", valid_toolchain_digest, [{"name": "runtime", "version": "1.0"}])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain])
	not has_rule(violations, "corpus.toolchain.artifact-pin")
	not has_rule(violations, "corpus.toolchain.tools-nonempty")
}

test_toolchain_with_unpinned_artifact_rejected if {
	toolchain := execution_toolchain("toolchain-a", "home", "latest", [{"name": "runtime", "version": "1.0"}])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain])
	has_rule(violations, "corpus.toolchain.artifact-pin")
}

test_toolchain_with_empty_tool_inventory_rejected if {
	toolchain := execution_toolchain("toolchain-a", "home", valid_toolchain_digest, [])
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain])
	has_rule(violations, "corpus.toolchain.tools-nonempty")
}

test_worker_requirement_profile_requiring_a_malformed_typed_reference_rejected if {
	toolchain := execution_toolchain("toolchain-a", "home", valid_toolchain_digest, [{"name": "runtime", "version": "1.0"}])
	profile := document(".jumo/worker-requirement-profiles/bad-ref.yml", "WorkerRequirementProfile", "bad-ref", {
		"ownerRealm": "home",
		"requiredExecutionToolchainRefs": [{"kind": "RoleDefinition", "namespace": "dev.jumo.test", "id": "toolchain-a"}],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain, profile])
	has_rule(violations, "corpus.reference.kind-match")
}

test_worker_substrate_claiming_an_undeclared_toolchain_rejected if {
	substrate := document(".jumo/worker-substrates/undeclared.yml", "WorkerSubstrate", "undeclared", {
		"ownerRealm": "home",
		"providedExecutionToolchainRefs": [toolchain_ref("missing-toolchain")],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [substrate])
	has_rule(violations, "corpus.reference.kind-id")
}

test_worker_substrate_providing_a_toolchain_in_another_realm_rejected if {
	toolchain := execution_toolchain("toolchain-a", "other", valid_toolchain_digest, [{"name": "runtime", "version": "1.0"}])
	substrate := document(".jumo/worker-substrates/cross-realm.yml", "WorkerSubstrate", "cross-realm", {
		"ownerRealm": "home",
		"providedExecutionToolchainRefs": [toolchain_ref("toolchain-a")],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain, substrate])
	has_rule(violations, "corpus.reference.same-realm")
}

test_worker_requirement_profile_requiring_a_toolchain_with_no_same_realm_provider_rejected if {
	toolchain := execution_toolchain("toolchain-a", "home", valid_toolchain_digest, [{"name": "runtime", "version": "1.0"}])
	profile := document(".jumo/worker-requirement-profiles/unmet.yml", "WorkerRequirementProfile", "unmet", {
		"ownerRealm": "home",
		"requiredExecutionToolchainRefs": [toolchain_ref("toolchain-a")],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain, profile])
	has_rule(violations, "corpus.toolchain.requirement-unmet")
}

test_worker_requirement_profile_resolves_a_portable_toolchain_solely_through_typed_declarations if {
	toolchain := execution_toolchain("toolchain-a", "home", valid_toolchain_digest, [{"name": "runtime", "version": "1.0"}])
	profile := document(".jumo/worker-requirement-profiles/met.yml", "WorkerRequirementProfile", "met", {
		"ownerRealm": "home",
		"requiredExecutionToolchainRefs": [toolchain_ref("toolchain-a")],
	})
	substrate := document(".jumo/worker-substrates/provider.yml", "WorkerSubstrate", "provider", {
		"ownerRealm": "home",
		"providedExecutionToolchainRefs": [toolchain_ref("toolchain-a")],
	})
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [toolchain, profile, substrate])
	not has_rule(violations, "corpus.toolchain.requirement-unmet")
	not has_rule(violations, "corpus.reference.kind-match")
	not has_rule(violations, "corpus.reference.kind-id")
	not has_rule(violations, "corpus.reference.same-realm")
	not has_rule(violations, "corpus.toolchain.artifact-pin")
	not has_rule(violations, "corpus.toolchain.tools-nonempty")
}

# EventIngress / EVENT ProcessStartTrigger (event-ingress-contract-foundations)

secret_binding_ref(id) := {"kind": "SecretBinding", "namespace": "dev.jumo.test", "id": id}

process_spec_ref(id) := {"kind": "ProcessSpec", "namespace": "dev.jumo.test", "id": id}

valid_schema_digest := "sha256:bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"

event_ingress(id, realm, target_id, active, digest) := document(
	sprintf(".jumo/event-ingresses/%s.yml", [id]),
	"EventIngress",
	id,
	{
		"ownerRealm": realm,
		"active": active,
		"schemaBinding": {
			"modelClass": "AttentionItem",
			"schemaVersion": "1.0.0",
			"schemaId": "AttentionItem",
			"schemaDigest": digest,
			"profile": "DRAFT_2020_12",
		},
		"verificationSecretBindingRef": secret_binding_ref("verify-key"),
		"replayWindow": "PT1H",
		"retentionBoundary": "P30D",
		"processSpecRef": process_spec_ref(target_id),
	},
)

event_capabilities := document(
	".jumo/capabilities/event.yml",
	"ActionCapabilitySet",
	"event",
	{"capabilities": [
		{"name": "event.capture.normalize", "riskTier": "LOW"},
		{"name": "event.test.effect", "producesExternalEffect": true},
		{"name": "attention.item.publish", "riskTier": "LOW"},
	]},
)

secret_binding := document(".jumo/secrets/verify-key.yml", "SecretBinding", "verify-key", {"ownerRealm": "home"})

# start -> observe (semanticStage OBSERVATION) -> effect (producesExternalEffect) -> end
event_process_observed_first := document(
	".jumo/processes/observed-first.yml",
	"ProcessSpec",
	"observed-first",
	{
		"ownerRealm": "home",
		"startTrigger": "EVENT",
		"inputType": "AttentionItem",
		"outputType": "AttentionItem",
		"steps": [
			{"id": "start", "kind": "START"},
			{"id": "observe", "kind": "SERVICE", "capabilityRef": "event.capture.normalize", "semanticStage": "OBSERVATION"},
			{"id": "effect", "kind": "SERVICE", "capabilityRef": "event.test.effect"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [
			{"id": "a", "from": "start", "to": "observe", "payloadType": "AttentionItem"},
			{"id": "b", "from": "observe", "to": "effect", "payloadType": "AttentionItem"},
			{"id": "c", "from": "effect", "to": "end", "payloadType": "AttentionItem"},
		],
	},
)

# start -> effect (producesExternalEffect, no prior observation) -> end
event_process_unobserved_effect := document(
	".jumo/processes/unobserved-effect.yml",
	"ProcessSpec",
	"unobserved-effect",
	{
		"ownerRealm": "home",
		"startTrigger": "EVENT",
		"inputType": "AttentionItem",
		"outputType": "AttentionItem",
		"steps": [
			{"id": "start", "kind": "START"},
			{"id": "effect", "kind": "SERVICE", "capabilityRef": "event.test.effect"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [
			{"id": "a", "from": "start", "to": "effect", "payloadType": "AttentionItem"},
			{"id": "b", "from": "effect", "to": "end", "payloadType": "AttentionItem"},
		],
	},
)

# start -> publish (attention.item.publish, no semanticStage) -> effect (producesExternalEffect) -> end --
# attention publication alone, without an OBSERVATION semanticStage, still gates the later effect.
event_process_attention_first := document(
	".jumo/processes/attention-first.yml",
	"ProcessSpec",
	"attention-first",
	{
		"ownerRealm": "home",
		"startTrigger": "EVENT",
		"inputType": "AttentionItem",
		"outputType": "AttentionItem",
		"steps": [
			{"id": "start", "kind": "START"},
			{"id": "publish", "kind": "SERVICE", "capabilityRef": "attention.item.publish"},
			{"id": "effect", "kind": "SERVICE", "capabilityRef": "event.test.effect"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [
			{"id": "a", "from": "start", "to": "publish", "payloadType": "AttentionItem"},
			{"id": "b", "from": "publish", "to": "effect", "payloadType": "AttentionItem"},
			{"id": "c", "from": "effect", "to": "end", "payloadType": "AttentionItem"},
		],
	},
)

manual_process := document(
	".jumo/processes/manual.yml",
	"ProcessSpec",
	"manual",
	{
		"startTrigger": "MANUAL",
		"inputType": "AttentionItem",
		"outputType": "AttentionItem",
		"steps": [
			{"id": "start", "kind": "START"},
			{"id": "end", "kind": "END", "terminalState": "COMPLETED"},
		],
		"flows": [{"id": "a", "from": "start", "to": "end", "payloadType": "AttentionItem"}],
	},
)

test_event_ingress_with_missing_schema_digest_rejected if {
	ingress := event_ingress("ingress-a", "home", "observed-first", true, "")
	violations := data.jumo.corpus.deny with input as array.flatten([
		execution_base,
		[event_capabilities, secret_binding, event_process_observed_first],
		[ingress],
	])
	has_rule(violations, "corpus.event-ingress.schema-required")
}

test_event_ingress_targeting_a_manual_process_rejected if {
	ingress := event_ingress("ingress-a", "home", "manual", true, valid_schema_digest)
	violations := data.jumo.corpus.deny with input as array.flatten([
		execution_base,
		[event_capabilities, secret_binding, manual_process],
		[ingress],
	])
	has_rule(violations, "corpus.event-ingress.target-must-be-event")
}

test_event_started_process_with_no_active_ingress_rejected if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [event_capabilities, event_process_observed_first])
	has_rule(violations, "corpus.event-ingress.inactive-target")
}

test_event_started_process_with_only_an_inactive_ingress_rejected if {
	ingress := event_ingress("ingress-a", "home", "observed-first", false, valid_schema_digest)
	violations := data.jumo.corpus.deny with input as array.flatten([
		execution_base,
		[event_capabilities, secret_binding, event_process_observed_first],
		[ingress],
	])
	has_rule(violations, "corpus.event-ingress.inactive-target")
}

test_event_ingress_verification_secret_binding_in_another_realm_rejected if {
	other_realm_secret := document(".jumo/secrets/verify-key.yml", "SecretBinding", "verify-key", {"ownerRealm": "other"})
	ingress := event_ingress("ingress-a", "home", "observed-first", true, valid_schema_digest)
	violations := data.jumo.corpus.deny with input as array.flatten([
		execution_base,
		[event_capabilities, other_realm_secret, event_process_observed_first],
		[ingress],
	])
	has_rule(violations, "corpus.reference.same-realm")
}

test_event_triggered_process_reaching_an_effect_before_observation_rejected if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [event_capabilities, event_process_unobserved_effect])
	has_rule(violations, "corpus.process.event-first-effect")
}

test_event_triggered_process_observing_before_effect_accepted if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [event_capabilities, event_process_observed_first])
	not has_rule(violations, "corpus.process.event-first-effect")
}

test_event_triggered_process_publishing_attention_first_accepted if {
	violations := data.jumo.corpus.deny with input as array.concat(execution_base, [event_capabilities, event_process_attention_first])
	not has_rule(violations, "corpus.process.event-first-effect")
}

test_event_ingress_fully_declared_and_bound_accepted if {
	ingress := event_ingress("ingress-a", "home", "observed-first", true, valid_schema_digest)
	violations := data.jumo.corpus.deny with input as array.flatten([
		execution_base,
		[event_capabilities, secret_binding, event_process_observed_first],
		[ingress],
	])
	not has_rule(violations, "corpus.event-ingress.schema-required")
	not has_rule(violations, "corpus.event-ingress.target-must-be-event")
	not has_rule(violations, "corpus.event-ingress.inactive-target")
	not has_rule(violations, "corpus.reference.kind-match")
	not has_rule(violations, "corpus.reference.kind-id")
	not has_rule(violations, "corpus.reference.same-realm")
	not has_rule(violations, "corpus.process.event-first-effect")
}
