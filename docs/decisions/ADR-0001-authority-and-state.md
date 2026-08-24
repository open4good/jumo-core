---
title: ADR-0001 Authority and state boundaries
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1]
---

# ADR-0001 Authority and state boundaries

## Decision

Keep human intention, model interpretation, policy authorization, capability grant, execution,
external effect, and verified result separate. Git is contractual state, PostgreSQL is recognized
state, and Temporal is execution history.

## Consequences

No pull request, principle, model output, or coordinator grants permission. Effects are
idempotent, deduplicated, or reconciled. Realm-scoped data and audit events retain their Realm and
multi-user identifiers.
