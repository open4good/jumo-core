---
title: ADR-0055 — Invocation attribution and recognized grant ledger
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [14]
---

# ADR-0055 — Invocation attribution and recognized grant ledger

## Boundary

Every `WorkerInvocation` carries the typed `RoleDefinition` that caused it. Concurrent
invocations for different engagements therefore remain attributable to one stable role identity
without creating Fast or Deep clones of an Advisor or Nestor.

Capability grants are recognized PostgreSQL business state. Issuance, consumption, expiration and
revocation append sanitized lifecycle events to an immutable ledger. The only active state is an
unexpired, persisted `ACTIVE` record. Restarting a process cannot reactivate an in-memory grant;
an unrecognized grant is refused.

Neither grant rows nor grant events contain a token, request argument, raw result, secret or prompt
content. The Team Hub may expose only active grant metadata and sanitized events from the most
recent 24 hours. Audit retention, rather than the display window, governs durable retention.

For MCP, a grant authorizes exactly one invocation of exactly one operation. A long-lived gateway
session contains descriptive contract projection, never renewable grant authority. Before dispatch,
the control plane atomically validates the lease, policy, schema pin and any effect approval; creates
an immutable invocation intent; issues and consumes the one-call grant; and returns a signed receipt
bound to the invocation id and argument digest. A gateway without that receipt cannot contact the
upstream.

Invocation outcomes are append-only events. Arguments and results remain outside the ledger; only
their SHA-256 digests, sizes, policy rule, schema digest and timing are retained. `DISPATCHED` without
a terminal event becomes `UNKNOWN` and requires reconciliation before retry. Monthly partitions and
the organization's retention policy are part of the production boundary, not deferred optimization.

## Consequences

The gateway and Team Hub use the same contract appraisal boundary when describing potential
connector scope. Potential scope is not a grant and is always subject to policy. Runtime and API
evidence can establish a complete grant lifecycle without widening access to effect payloads.
