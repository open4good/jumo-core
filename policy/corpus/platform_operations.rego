package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

# A PlatformOperationSet declares which platform operations exist and which agent each is offered
# to. It grants nothing: authority comes from the capability an operation names, resolved at call
# time. These three rules keep that single authority model honest, because a catalogue that names a
# capability nobody declared, or offers an operation to an agent that never requested its
# capability, would widen what a model may be handed without any grant ever being reviewed.

platform_operations contains entry if {
	some document in corpus.documents
	document.kind == "PlatformOperationSet"
	some operation in object.get(corpus.spec(document), "operations", [])
	entry := {"document": document, "operation": operation}
}

# An operation may only name a capability the ActionCapabilitySet corpus actually declares.
deny contains corpus.violation("corpus.platform-operation.capability", entry.document, message) if {
	some entry in platform_operations
	name := object.get(entry.operation, "capabilityRef", "")
	not name in corpus.capability_names
	message := sprintf(
		"platform operation %s names capability %s, which no ActionCapabilitySet declares",
		[object.get(entry.operation, "exposedName", "<missing>"), name],
	)
}

# An operation is offerable to an agent only when that agent already requests its capability.
# Exposure is never a second way to obtain authority.
deny contains corpus.violation("corpus.platform-operation.exposure-requested", entry.document, message) if {
	some entry in platform_operations
	name := object.get(entry.operation, "capabilityRef", "")
	some ref in object.get(entry.operation, "exposedToAgentDefinitionRefs", [])
	agent := corpus.document_by_kind_id("AgentDefinition", corpus.ref_id(ref))
	not name in object.get(corpus.spec(agent), "requestedCapabilities", [])
	message := sprintf(
		"platform operation %s is exposed to agent %s, which does not request capability %s",
		[object.get(entry.operation, "exposedName", "<missing>"), corpus.ref_id(ref), name],
	)
}

# Two operations sharing an exposedName inside one set make the name a model sees ambiguous, and
# the grant that name resolves to unpredictable.
deny contains corpus.violation("corpus.platform-operation.unique-name", document, message) if {
	some document in corpus.documents
	document.kind == "PlatformOperationSet"
	operations := object.get(corpus.spec(document), "operations", [])
	names := [name | some operation in operations; name := object.get(operation, "exposedName", "")]
	some name in names
	count([other | some other in names; other == name]) > 1
	message := sprintf("platform operation name %s is declared more than once in this set", [name])
}
