package jumo.corpus_platform_operations_test

import rego.v1

document(path, kind, identifier, namespace, spec) := {
	"path": path,
	"contents": {
		"apiVersion": "jumo.dev/v1",
		"kind": kind,
		"metadata": {"id": identifier, "namespace": namespace},
		"spec": spec,
	},
}

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

capabilities := document(".jumo/capabilities/core.yml", "ActionCapabilitySet", "core", "dev.jumo.core", {"capabilities": [
	{"name": "work.order.read", "description": "Read a work order.", "riskTier": "LOW", "reversible": true},
	{"name": "team.roster.read", "description": "Read the roster.", "riskTier": "LOW", "reversible": true},
	{"name": "attention.item.publish", "description": "Publish an attention item.", "riskTier": "MEDIUM", "reversible": false, "producesExternalEffect": true},
]})

agent := document(".jumo/agents/nestor.yml", "AgentDefinition", "federating-chief-of-staff", "dev.jumo.core", {"requestedCapabilities": ["work.order.read"]})

operation_set(operations) := document(".jumo/platform-operations/core.yml", "PlatformOperationSet", "core", "dev.jumo.core", {"operations": operations})

nestor_ref := {"kind": "AgentDefinition", "namespace": "dev.jumo.core", "id": "federating-chief-of-staff"}

operation(exposed_name, capability_ref) := {
	"exposedName": exposed_name,
	"capabilityRef": capability_ref,
	"description": "A description long enough to clear the twenty-character floor.",
	"inputSchemaRef": "platform-work-orders-list",
	"handlerId": "PLATFORM_WORK_ORDERS_LIST",
	"exposedToAgentDefinitionRefs": [nestor_ref],
}

# corpus.platform-operation.capability

test_operation_naming_a_declared_capability_is_accepted if {
	set := operation_set([operation("platform.work-orders.list", "work.order.read")])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	not has_rule(violations, "corpus.platform-operation.capability")
}

test_operation_naming_an_undeclared_capability_is_denied if {
	set := operation_set([operation("platform.work-orders.list", "work.order.invent")])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	has_rule(violations, "corpus.platform-operation.capability")
}

# corpus.platform-operation.exposure-requested

test_operation_exposed_to_an_agent_that_requests_the_capability_is_accepted if {
	set := operation_set([operation("platform.work-orders.list", "work.order.read")])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	not has_rule(violations, "corpus.platform-operation.exposure-requested")
}

# team.roster.read is a DECLARED capability the agent does not request, so this case can only be
# caught by the exposure rule -- the capability rule stays silent on it, which is what separates
# the two.
test_operation_exposed_to_an_agent_that_does_not_request_the_capability_is_denied if {
	set := operation_set([operation("platform.teams.list", "team.roster.read")])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	has_rule(violations, "corpus.platform-operation.exposure-requested")
	not has_rule(violations, "corpus.platform-operation.capability")
}

# corpus.platform-operation.unique-name

test_distinct_exposed_names_in_one_set_are_accepted if {
	set := operation_set([
		operation("platform.work-orders.list", "work.order.read"),
		operation("platform.work-orders.get", "work.order.read"),
	])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	not has_rule(violations, "corpus.platform-operation.unique-name")
}

test_duplicate_exposed_name_in_one_set_is_denied if {
	set := operation_set([
		operation("platform.work-orders.list", "work.order.read"),
		operation("platform.work-orders.list", "work.order.read"),
	])
	violations := data.jumo.corpus.deny with input as [capabilities, agent, set]
	has_rule(violations, "corpus.platform-operation.unique-name")
}

# corpus.platform-operation.effect-reconciliation

effect_agent := document(".jumo/agents/nestor.yml", "AgentDefinition", "federating-chief-of-staff", "dev.jumo.core", {"requestedCapabilities": ["work.order.read", "attention.item.publish"]})

test_an_effect_operation_without_a_reconciliation_is_denied if {
	set := operation_set([operation("platform.attention.publish", "attention.item.publish")])
	violations := data.jumo.corpus.deny with input as [capabilities, effect_agent, set]
	has_rule(violations, "corpus.platform-operation.effect-reconciliation")
}

test_an_effect_operation_declaring_its_reconciliation_is_accepted if {
	set := operation_set([object.union(operation("platform.attention.publish", "attention.item.publish"), {"reconciliation": "REQUIRED"})])
	violations := data.jumo.corpus.deny with input as [capabilities, effect_agent, set]
	not has_rule(violations, "corpus.platform-operation.effect-reconciliation")
}

# The reachability half: a READ operation declaring none is not refused, so the deny above is about
# the effect and not about the field being absent everywhere.
test_a_read_operation_needs_no_reconciliation if {
	set := operation_set([operation("platform.work-orders.list", "work.order.read")])
	violations := data.jumo.corpus.deny with input as [capabilities, effect_agent, set]
	not has_rule(violations, "corpus.platform-operation.effect-reconciliation")
}
