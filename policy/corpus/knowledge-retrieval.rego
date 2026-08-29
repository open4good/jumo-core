package jumo.corpus

import rego.v1

import data.jumo.lib.corpus

# Knowledge retrieval has no ambient authority: contracts select only local, context-derived inputs.
deny contains corpus.violation("corpus.knowledge.corpus-project-scope", document, "PROJECT corpus requires spec.projectRef") if {
	some document in corpus.documents
	document.kind == "KnowledgeCorpus"
	spec := corpus.spec(document)
	spec.scope == "PROJECT"
	object.get(spec, "projectRef", null) == null
}

deny contains corpus.violation("corpus.knowledge.corpus-realm-scope", document, "REALM corpus must not name spec.projectRef") if {
	some document in corpus.documents
	document.kind == "KnowledgeCorpus"
	spec := corpus.spec(document)
	spec.scope == "REALM"
	object.get(spec, "projectRef", null) != null
}

deny contains corpus.violation("corpus.knowledge.source-corpus-realm", document, message) if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	target := corpus.document_by_kind_id("KnowledgeCorpus", corpus.ref_id(corpus.spec(document).knowledgeCorpusRef))
	target != null
	corpus.spec(target).ownerRealm != corpus.spec(document).ownerRealm
	message := "spec.knowledgeCorpusRef must resolve in the source ownerRealm"
}

deny contains corpus.violation("corpus.knowledge.source-kind-binding", document, message) if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	spec := corpus.spec(document)
	kind := spec.sourceKind
	not valid_source_binding(kind, spec)
	message := sprintf("spec.sourceKind %q requires exactly its matching binding", [kind])
}

valid_source_binding("PROJECT_GIT", spec) if {
	object.get(spec, "projectRef", null) != null
	object.get(spec, "composedRealm", null) == null
	object.get(spec, "connectorDefinitionRef", null) == null
}

valid_source_binding("COMPOSED_REALM", spec) if {
	object.get(spec, "projectRef", null) == null
	spec.composedRealm == spec.ownerRealm
	object.get(spec, "connectorDefinitionRef", null) == null
}

valid_source_binding("CONNECTOR_SNAPSHOT", spec) if {
	object.get(spec, "projectRef", null) == null
	object.get(spec, "composedRealm", null) == null
	object.get(spec, "connectorDefinitionRef", null) != null
	count(object.get(spec, "readOperationRefs", [])) > 0
}

deny contains corpus.violation("corpus.knowledge.source-connector-realm", document, "spec.connectorDefinitionRef must resolve in the source ownerRealm") if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	ref := object.get(corpus.spec(document), "connectorDefinitionRef", null)
	ref != null
	connector := corpus.document_by_kind_id("ConnectorDefinition", corpus.ref_id(ref))
	connector != null
	corpus.spec(connector).ownerRealm != corpus.spec(document).ownerRealm
}

deny contains corpus.violation("corpus.knowledge.source-audience", document, "source audience cannot be wider than its corpus dataScopeCeiling") if {
	some document in corpus.documents
	document.kind == "KnowledgeSource"
	source := corpus.spec(document)
	target := corpus.document_by_kind_id("KnowledgeCorpus", corpus.ref_id(source.knowledgeCorpusRef))
	target != null
	scope_rank(source.audience) < scope_rank(corpus.spec(target).dataScopeCeiling)
}

scope_rank("PUBLISHED_SUMMARY") := 0
scope_rank("TYPED_ATTENTION_ONLY") := 1
scope_rank("PROJECT_SCOPED") := 2
scope_rank("REALM_PRIVATE") := 3
scope_rank("ORGANIZATION_ONLY") := 4

deny contains corpus.violation("corpus.knowledge.index-embedding-required", document, "HYBRID mode requires spec.embedding") if {
	some document in corpus.documents
	document.kind == "KnowledgeIndexProfile"
	spec := corpus.spec(document)
	spec.mode == "HYBRID"
	object.get(spec, "embedding", null) == null
}

deny contains corpus.violation("corpus.knowledge.index-local-only", document, "embedding must be LOCAL_ONLY with pinned model and tokenizer digests") if {
	some document in corpus.documents
	document.kind == "KnowledgeIndexProfile"
	embedding := corpus.spec(document).embedding
	embedding.executionMode != "LOCAL_ONLY"
}

deny contains corpus.violation("corpus.knowledge.index-pins", document, "embedding model and tokenizer must be sha256-pinned") if {
	some document in corpus.documents
	document.kind == "KnowledgeIndexProfile"
	embedding := corpus.spec(document).embedding
	not regex.match(`^sha256:[a-f0-9]{64}$`, object.get(embedding, "modelDigest", ""))
}

deny contains corpus.violation("corpus.knowledge.index-pins", document, "embedding model and tokenizer must be sha256-pinned") if {
	some document in corpus.documents
	document.kind == "KnowledgeIndexProfile"
	embedding := corpus.spec(document).embedding
	not regex.match(`^sha256:[a-f0-9]{64}$`, object.get(embedding, "tokenizerDigest", ""))
}
