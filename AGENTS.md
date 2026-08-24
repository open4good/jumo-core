---
title: Jumo-core operating contract
normative: true
audience: PROJECT_SCOPED
---

# Jumo-core operating contract

## What this repository holds

jumo-core is the public PLATFORM corpus: the LinkML metamodel, Rego policy, canonical decisions,
ADRs and concept documents that jumo (the execution platform) and jumo-gof (the private Realm
source) both compose. It carries no WorkOrders of its own -- those live in jumo's `.jumo/work/`
public Realm overlay or jumo-gof's private Realm source -- and no Java, Nuxt or database: contract
authoring only.

## Reading order

| Read | For |
|---|---|
| [canonical decisions](docs/00-canonical-decisions.md) | the numbered rules everything else cites |
| [ADR index](docs/decisions/README.md) | which ADR owns a boundary, before opening one |
| [concept document](docs/concepts/positionnement-conceptuel.md) | the vocabulary the metamodel encodes |

## Commit trailers

Every commit carries the same three trailers as jumo (see jumo's own `AGENTS.md`):
`Jumo-Work-Order`, `Jumo-Role`, `Jumo-Contract-Revision` -- naming the WorkOrder in jumo or
jumo-gof that authorizes the change, since jumo-core holds no WorkOrders of its own.

## Operating rules

Every Markdown document declares `title`, `normative` and `audience` front matter; only
`docs/00-canonical-decisions.md`, `docs/decisions/**` and `AGENTS.md` may state rules
(`normative: true`), everything else is derived explanation. `scripts/verify/check-corpus-budget.py`
enforces the ratchet against this repository's own `.jumo/corpus-budget.json`, independent of
jumo's -- a lower measured ceiling is ordinary, a higher one needs owner approval.
`scripts/generate/lint_linkml_semantics.py`, `scripts/verify/check-boundary.py` and `opa check
--strict`/`opa test` against `policy/` gate every metamodel or policy change.

Generated projections under `metamodel/generated/` are not edited by hand. `metamodel/VERSION`
tracks the published `dev.jumo:jumo-model` artifact jumo consumes as a pinned dependency.

For jumo's own operating contract -- WorkOrders, ring, pathScope, backend and frontend tooling --
see jumo's `AGENTS.md`; this file covers jumo-core's own corpus only.
