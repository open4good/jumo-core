package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

placeholder_tokens := {"TODO", "FIXME", "XXX", "CHANGEME", "TBD"}

deny contains corpus.violation("corpus.api-version.v1alpha1-refused", document, message) if {
	some document in corpus.documents
	document.apiVersion == "jumo.dev/v1alpha1"
	message := "apiVersion 'jumo.dev/v1alpha1' is retired and refused"
}

deny contains corpus.violation("corpus.identity.unique", document, message) if {
	some document in corpus.documents
	some other in corpus.documents
	corpus.path(document) < corpus.path(other)
	document.kind == other.kind
	corpus.namespace(document) == corpus.namespace(other)
	corpus.id(document) == corpus.id(other)
	message := sprintf(
		"duplicate %s (namespace=%q, id=%q; also in %s)",
		[document.kind, corpus.namespace(document), corpus.id(document), corpus.path(other)],
	)
}

deny contains corpus.violation("corpus.placeholder.none", document, message) if {
	some document in corpus.documents
	some trail, value in walk(document)
	is_string(value)
	upper(trim_space(value)) in placeholder_tokens
	message := sprintf("%s: unresolved placeholder", [json.marshal(trail)])
}

deny contains corpus.violation("corpus.namespace.reverse-dns", document, message) if {
	some document in corpus.documents
	namespace := corpus.namespace(document)
	not regex.match(`^[a-z][a-z0-9-]*(\.[a-z][a-z0-9-]*){1,7}$`, namespace)
	message := sprintf("metadata.namespace %q violates reverse-DNS grammar", [namespace])
}

unsafe_personal_space_path(path) if {
	startswith(path, "/")
}

unsafe_personal_space_path(path) if {
	contains(path, "..")
}

deny contains corpus.violation("corpus.personal-space.workspace-path", document, message) if {
	some document in corpus.documents
	document.kind == "PersonalSpace"
	workspace_path := object.get(corpus.spec(document), "workspacePath", "")
	unsafe_personal_space_path(workspace_path)
	message := sprintf("spec.workspacePath %q must be relative to the repository root and contain no '..' segment", [workspace_path])
}

deny contains corpus.violation("corpus.personal-space.lfs-pointer", document, message) if {
	some document in corpus.documents
	document.kind == "PersonalSpace"
	some index, pointer in object.get(corpus.spec(document), "gitLfsPointers", [])
	trim_space(pointer) == ""
	message := sprintf("spec.gitLfsPointers[%d] must be a non-empty pointer", [index])
}

deny contains corpus.violation("corpus.project.location", document, message) if {
	some document in corpus.documents
	document.kind == "Project"
	corpus.path(document) != "jumo.yml"
	expected := sprintf(".jumo/projects/%s.yml", [corpus.id(document)])
	corpus.path(document) != expected
	message := sprintf("Project declaration must live at %q", [expected])
}

deny contains corpus.violation("corpus.project.personal-space", document, message) if {
	some document in corpus.documents
	document.kind == "Project"
	spec := corpus.spec(document)
	spec.lifecycle in {"BOOTSTRAP", "ACTIVE", "MAINTENANCE", "ARCHIVED"}
	count(object.get(spec, "personalSpaces", [])) == 0
	message := "non-ideation Project lifecycle requires a personalSpace"
}

deny contains corpus.violation("corpus.capability-profile.alias", document, message) if {
	some document in corpus.documents
	document.kind == "CapabilityProfile"
	corpus.spec(document).requirementProfileRef == corpus.id(document)
	message := "spec.requirementProfileRef must differ from source identity"
}

deny contains corpus.violation("corpus.golden-task.case-unique", document, message) if {
	some document in corpus.documents
	document.kind == "GoldenTaskSet"
	cases := object.get(corpus.spec(document), "cases", [])
	ids := [item.id | some item in cases]
	count(ids) != count({identifier | some identifier in ids})
	message := "spec.cases ids must be unique"
}

deny contains corpus.violation("corpus.kit-lock.certification", document, message) if {
	some document in corpus.documents
	document.kind == "KitLock"
	spec := corpus.spec(document)
	certification := corpus.document_by_kind_id("KitReleaseCertification", spec.certificationRef)
	some field in {"repository", "commit", "manifestDigest"}
	object.get(spec, field, null) != object.get(corpus.spec(certification), field, null)
	message := sprintf("spec.%s does not match certification", [field])
}

deny contains corpus.violation("corpus.kit-lock.binding", document, message) if {
	some document in corpus.documents
	document.kind == "KitLock"
	spec := corpus.spec(document)
	binding := corpus.document_by_kind_id("KitBinding", spec.bindingRef)
	kit := object.get(corpus.spec(binding), "kit", {})
	object.get(spec, "repository", null) != object.get(kit, "repository", null)
	message := "lock repository does not match binding"
}

deny contains corpus.violation("corpus.kit-lock.binding", document, message) if {
	some document in corpus.documents
	document.kind == "KitLock"
	spec := corpus.spec(document)
	binding := corpus.document_by_kind_id("KitBinding", spec.bindingRef)
	kit := object.get(corpus.spec(binding), "kit", {})
	object.get(spec, "commit", null) != object.get(kit, "commit", null)
	message := "lock commit does not match binding"
}

deny contains corpus.violation("corpus.kit-lock.target-unique", document, message) if {
	some document in corpus.documents
	document.kind == "KitLock"
	targets := [entry.targetPath | some entry in object.get(corpus.spec(document), "rendered", [])]
	count(targets) != count({target | some target in targets})
	message := "spec.rendered target paths must be unique"
}

deny contains corpus.violation("corpus.federation.no-self", document, message) if {
	some document in corpus.documents
	document.kind == "FederatedPeer"
	spec := corpus.spec(document)
	spec.peerRealm == spec.ownerRealm
	message := "a Realm may not federate with itself"
}

deny contains corpus.violation("corpus.unique.operation-id", document, message) if {
	some document in corpus.documents
	document.kind == "ConnectorDefinition"
	operations := object.get(corpus.spec(document), "operations", [])
	ids := [operation.id | some operation in operations]
	count(ids) != count({identifier | some identifier in ids})
	message := "spec.operations: operation ids must be unique"
}

deny contains corpus.violation("corpus.unique.repository-binding-id", document, message) if {
	some document in corpus.documents
	document.kind == "Project"
	bindings := object.get(corpus.spec(document), "repositoryBindings", [])
	ids := [binding.id | some binding in bindings]
	count(ids) != count({identifier | some identifier in ids})
	message := "spec.repositoryBindings: binding ids must be unique"
}

deny contains corpus.violation("corpus.unique-interface-facet", document, message) if {
	some document in corpus.documents
	document.kind == "InterfaceSurface"
	facets := object.get(corpus.spec(document), "facets", [])
	entities := [facet.entity | some facet in facets]
	count(entities) != count({entity | some entity in entities})
	message := "spec.facets: an entity may be declared only once"
}
