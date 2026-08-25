package jumo.lib.corpus

import rego.v1

# Conftest --combine supplies [{"path": ..., "contents": ...}, ...]. Tests use the same shape,
# making the corpus seen in CI identical to the one exercised by opa test.
documents := [document |
	some item in input
	is_object(item.contents)
	api_version := object.get(item.contents, "apiVersion", "")
	is_string(api_version)
	startswith(api_version, "jumo.dev/")
	document := object.union(item.contents, {"_jumo_path": item.path})
]

policy_context := context if {
	some item in input
	is_object(item.contents)
	context := object.get(item.contents, "jumoPolicyContext", {})
	count(context) > 0
}

path(document) := object.get(document, "_jumo_path", "<input>")

id(document) := object.get(object.get(document, "metadata", {}), "id", "<missing>")

namespace(document) := object.get(object.get(document, "metadata", {}), "namespace", "<missing>")

spec(document) := object.get(document, "spec", {})

documents_of_kind(kind) := [document |
	some document in documents
	document.kind == kind
]

ids_of_kind(kind) := {identifier |
	some document in documents
	document.kind == kind
	identifier := id(document)
}

document_by_kind_id(kind, identifier) := document if {
	some document in documents
	document.kind == kind
	id(document) == identifier
}

owner_realm(document) := object.get(spec(document), "ownerRealm", "")

capabilities contains capability if {
	some document in documents
	document.kind == "ActionCapabilitySet"
	some capability in spec(document).capabilities
}

capability_names contains name if {
	some capability in capabilities
	name := capability.name
}

capability_by_name(name) := capability if {
	some capability in capabilities
	capability.name == name
}

ring_rank("RING_3_GOVERNED_PROJECT") := 0
ring_rank("RING_2_AGENT_BEHAVIOR") := 1
ring_rank("RING_1_CONTROL_PLANE") := 2
ring_rank("RING_0_ROOT_OF_TRUST") := 3

audience_rank("REALM_PRIVATE") := 0
audience_rank("PROJECT_SCOPED") := 1
audience_rank("TYPED_ATTENTION_ONLY") := 2
audience_rank("PUBLISHED_SUMMARY") := 3

violation(rule, document, message) := {
	"msg": message,
	"path": path(document),
	"rule": rule,
}

ref_id(ref) := ref.id if {
	is_object(ref)
}

ref_id(ref) := ref if {
	is_string(ref)
}

ref_namespace(ref) := ref.namespace if {
	is_object(ref)
}

ref_kind(ref) := ref.kind if {
	is_object(ref)
}

document_by_ref(ref) := document if {
	is_object(ref)
	some document in documents
	document.kind == ref.kind
	id(document) == ref.id
	namespace(document) == ref.namespace
}

has_ref_document(ref) if {
	is_object(ref)
	some document in documents
	document.kind == ref.kind
	id(document) == ref.id
	namespace(document) == ref.namespace
}

work_producer(work_spec) := id if {
	val := object.get(work_spec, "producerRoleDefinitionRef", object.get(work_spec, "operatorRef", null))
	val != null
	id := ref_id(val)
}

work_verifier(work_spec) := id if {
	val := object.get(work_spec, "verifierRoleDefinitionRef", object.get(work_spec, "verifierRef", null))
	val != null
	id := ref_id(val)
}

work_team(work_spec) := id if {
	val := object.get(work_spec, "teamSpecRef", object.get(work_spec, "teamRef", null))
	val != null
	id := ref_id(val)
}

work_project(work_spec) := id if {
	val := object.get(work_spec, "projectRef", null)
	val != null
	id := ref_id(val)
}

work_deps(work_spec) := [ref_id(d) |
	some d in object.get(work_spec, "dependsOnWorkOrderRefs", object.get(work_spec, "dependsOn", []))
]

work_parent(work_spec) := id if {
	val := object.get(work_spec, "parentWorkOrderRef", object.get(work_spec, "parentRef", null))
	val != null
	id := ref_id(val)
}

assignment_role(assignment_spec) := id if {
	val := object.get(assignment_spec, "roleDefinitionRef", object.get(assignment_spec, "operatorRef", null))
	val != null
	id := ref_id(val)
}

bearer_agent(bearer) := id if {
	val := object.get(bearer, "agentDefinitionRef", object.get(bearer, "archetypeRef", null))
	val != null
	id := ref_id(val)
}

bearer_principal(bearer) := id if {
	val := object.get(bearer, "principalRef", null)
	val != null
	id := ref_id(val)
}

member_role(member) := id if {
	val := object.get(member, "roleDefinitionRef", object.get(member, "operatorRef", null))
	val != null
	id := ref_id(val)
}

member_team(member) := id if {
	val := object.get(member, "teamSpecRef", object.get(member, "teamRef", null))
	val != null
	id := ref_id(val)
}
