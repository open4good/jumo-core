---
title: ADR-0059 — Generic monetary risk policy for external effects
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1, 2, 8, 14, 15]
---

# ADR-0059 — Generic monetary risk policy for external effects

## Decision

`MonetaryRiskPolicy` is a reusable, Realm-only Git contract for declared monetary external
operations. It declares an ISO 4217 currency, a bounded window, positive per-effect and
cumulative limits, and an explicit lifecycle. It names neither a provider, game, asset,
customer, financial product nor Realm instance.

A monetary operation declares its typed amount input and currency. Rego refuses it unless an
enabled policy of the same Realm and currency exists; it also refuses non-positive or internally
inconsistent limits. The policy creates no provider authority, grant, approval or dispatch path.

Git declares limits. PostgreSQL recognizes reservations and reconciled consumption; Temporal
records execution history. Monetary values stay out of capability grants, audit projections and
sanitized evidence. A later ActionRun consumer must enforce the recognized state immediately
before dispatch and reconcile an unknown outcome before another attempt.

## Consequences

- This publication introduces no Realm policy instance, provider credential, database migration,
  gateway behaviour, payment instruction, investment recommendation or external effect.
- The policy is compatible only with operations that explicitly declare a monetary amount and
  currency; an unmarked external operation is not inferred to be monetary.
- Contract publication ends at the model revision. A runtime consumer starts only after that
  revision is published and pinned by the release-owned contract-source process.
