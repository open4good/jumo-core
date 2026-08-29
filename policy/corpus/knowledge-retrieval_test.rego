package jumo.corpus_knowledge_retrieval_test

import rego.v1

document(path, kind, identifier, spec) := {
	"path": path,
	"contents": {"apiVersion": "jumo.dev/v1", "kind": kind, "metadata": {"id": identifier, "namespace": "dev.jumo.test"}, "spec": spec},
}

has_rule(violations, rule) if {
	some violation in violations
	violation.rule == rule
}

profile := document(".jumo/knowledge-index-profiles/local.yml", "KnowledgeIndexProfile", "local", {
	"mode": "HYBRID", "chunkMaximumTokens": 400, "chunkOverlapTokens": 40, "maximumResults": 8,
	"lexicalWeight": 0.5, "vectorWeight": 0.5,
	"embedding": {"executionMode": "LOCAL_ONLY", "modelName": "local", "dimensions": 384, "license": "Apache-2.0", "buildUri": "oci://example/model", "modelDigest": "sha256:aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "tokenizerDigest": "sha256:bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"},
})

project := document(".jumo/projects/p.yml", "Project", "p", {"ownerRealm": "home"})

corpus := document(".jumo/knowledge-corpora/p.yml", "KnowledgeCorpus", "p", {
	"ownerRealm": "home", "scope": "PROJECT", "projectRef": "p", "dataScopeCeiling": "PROJECT_SCOPED",
	"knowledgeSourceRefs": ["source"], "knowledgeIndexProfileRef": "local", "maximumStaleness": "P1D", "lifecycle": "ACTIVE",
})

source := document(".jumo/knowledge-sources/source.yml", "KnowledgeSource", "source", {
	"ownerRealm": "home", "knowledgeCorpusRef": "p", "sourceKind": "PROJECT_GIT", "projectRef": "p",
	"roots": ["docs"], "allowedMimeTypes": ["text/markdown"], "maximumDocumentBytes": 1000,
	"syncMode": "SCHEDULED", "reconciliationCadence": "P1D", "withdrawalPolicy": "PURGE_ON_SOURCE_REMOVAL", "audience": "PROJECT_SCOPED",
})

test_valid_local_project_retrieval_contract_has_no_knowledge_denial if {
	violations := data.jumo.corpus.deny with input as [project, profile, corpus, source]
	not has_rule(violations, "corpus.knowledge.corpus-project-scope")
	not has_rule(violations, "corpus.knowledge.source-kind-binding")
	not has_rule(violations, "corpus.knowledge.index-local-only")
}

# object.union merges nested objects recursively rather than replacing them wholesale, so a
# {"spec": {...}} override through it would silently keep profile's original embedding -- these
# two build the whole document fresh instead, to actually exercise embedding's absence.
test_lexical_profile_with_no_embedding_has_no_denial if {
	lexical_profile := document(".jumo/knowledge-index-profiles/local.yml", "KnowledgeIndexProfile", "local", {
		"mode": "LEXICAL", "chunkMaximumTokens": 400, "chunkOverlapTokens": 40, "maximumResults": 8,
		"lexicalWeight": 1, "vectorWeight": 0,
	})
	violations := data.jumo.corpus.deny with input as [project, lexical_profile, corpus, source]
	not has_rule(violations, "corpus.knowledge.index-embedding-required")
	not has_rule(violations, "corpus.knowledge.index-local-only")
	not has_rule(violations, "corpus.knowledge.index-pins")
}

test_hybrid_profile_with_no_embedding_is_refused if {
	unpinned_profile := document(".jumo/knowledge-index-profiles/local.yml", "KnowledgeIndexProfile", "local", {
		"mode": "HYBRID", "chunkMaximumTokens": 400, "chunkOverlapTokens": 40, "maximumResults": 8,
		"lexicalWeight": 0.5, "vectorWeight": 0.5,
	})
	violations := data.jumo.corpus.deny with input as [project, unpinned_profile, corpus, source]
	has_rule(violations, "corpus.knowledge.index-embedding-required")
}

test_refuses_scope_cross_realm_binding_wide_audience_and_remote_embedding if {
	bad_corpus := object.union(corpus, {"contents": object.union(corpus.contents, {"spec": object.union(corpus.contents.spec, {"projectRef": null})})})
	bad_source := object.union(source, {"contents": object.union(source.contents, {"spec": object.union(source.contents.spec, {"ownerRealm": "other", "sourceKind": "COMPOSED_REALM", "composedRealm": "home", "audience": "PUBLISHED_SUMMARY"})})})
	bad_profile := object.union(profile, {"contents": object.union(profile.contents, {"spec": object.union(profile.contents.spec, {"embedding": object.union(profile.contents.spec.embedding, {"executionMode": "REMOTE", "modelDigest": "not-pinned"})})})})
	violations := data.jumo.corpus.deny with input as [project, bad_profile, bad_corpus, bad_source]
	has_rule(violations, "corpus.knowledge.corpus-project-scope")
	has_rule(violations, "corpus.knowledge.source-corpus-realm")
	has_rule(violations, "corpus.knowledge.source-kind-binding")
	has_rule(violations, "corpus.knowledge.source-audience")
	has_rule(violations, "corpus.knowledge.index-local-only")
	has_rule(violations, "corpus.knowledge.index-pins")
}
