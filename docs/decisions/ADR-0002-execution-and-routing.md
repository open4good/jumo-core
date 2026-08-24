---
title: ADR-0002 Execution-cell and provider-routing boundaries
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [2]
---

# ADR-0002 Execution-cell and provider-routing boundaries

## Decision

`ExecutionCell` places compute and retains provider credentials locally. `ModelAccessAdapter`,
`ProviderSessionBinding`, `WorkerInvocation`, `EvidenceRecord`, and `RoutingDecision` record
provider access and per-turn routing. Worker native tool authority is disabled; reviewed,
capability-granted connector reach is the only tool reach.

## Consequences

Provider credentials, secrets, prompts, and raw provider output do not enter Git, logs, or
evidence. Routing evidence is sanitized and Realm-bound.
