---
title: ADR-0058 Governed knowledge retrieval contracts
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0058 Governed knowledge retrieval contracts

## Decision

`KnowledgeCorpus` and `KnowledgeSource` are REALM_ONLY contracts. A corpus binds its explicit
Realm or Project scope, source set, freshness ceiling, lifecycle and a reusable
`KnowledgeIndexProfile`; a suspended or retired corpus yields no result. Sources have exactly one
binding: a Project Git source, a same-Realm composed source, or a same-Realm connector snapshot.
Connectors transport snapshots and do not become retrieval authority.

`KnowledgeIndexProfile` is ADDITIVE and non-authoritative. It pins chunking, ranking and a
LOCAL_ONLY embedding artifact with model and tokenizer digests. The runtime resolves the profile
selected by the corpus and cannot download a model or call a remote embedding endpoint.

Prompts and worker requirements may request `CURRENT_CONTEXT` only. They name no Realm corpus
instance: the addressed Realm, optional Project, active lifecycle, grant and source metadata
derive the admissible set. Retrieved text is data, not authority. Citations preserve source,
document, fragment, source revision and content hash; a non-normative fragment is explanation,
never authority.

The derived index is reconstructible recognized state. Snapshot removal or disconnect purges text
and vectors while retaining only a content-free tombstone. v1 does not introduce GraphRAG; model-
extracted relations cannot become truth, ACLs or grants.

## Consequences

- Retrieval consumers begin only after this metamodel revision is published and pinned.
- Policy refuses missing or mismatched Project scope, cross-Realm source bindings, incorrect
  source-kind bindings, wider source audiences, remote embedding and unpinned artifacts.
- No runtime corpus instance, capability, API route or index implementation is introduced here.
