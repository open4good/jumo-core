---
title: ADR-0061 — Event ingress contract
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1, 2, 14, 15]
---

# ADR-0061 — Event ingress contract

## Decision

`EventIngress` is a generic, Realm-owned Git contract declaring that an untrusted external event
may start an exact `ProcessSpec`: a schema reference (`SchemaBinding`, pinned digest), a
verification binding (`verificationSecretBindingRef`, a same-Realm `SecretBinding` custodying the
key material used to check authenticity), a bounded replay window, a retention boundary, and an
exact `processSpecRef` target. It names no provider, channel, Realm instance or use case; a
webhook, an email inbox or a device signal is declared only by an instance. `ProcessStartTrigger`
gains a third value, `EVENT`, alongside `MANUAL` and `TIMER`; a `ProcessSpec` declares only that it
starts from an event, never which one -- the pairing lives on the `EventIngress` side.

`references.rego`'s generic typed-reference machinery covers a malformed, unresolved or cross-Realm
binding for free. `execution.rego` adds four checks it cannot express: a missing schema digest is
refused; a `processSpecRef` target whose own `startTrigger` is not `EVENT` is refused; an
`EVENT`-triggered `ProcessSpec` with no active, same-Realm `EventIngress` naming it is refused
(mirroring ADR-0060's requirement/supply symmetry); and, reusing the product-graph dominance-proof
technique that already orders policy before grant before effect, the first `SERVICE` step reachable
from `START` that produces an external effect must be preceded by a step whose `semanticStage` is
`OBSERVATION` or whose capability is `attention.item.publish` -- untrusted content earns bounded
observation or a routed attention item before anything else, and any effect past that point still
owes the ordinary policy/grant dominance proof besides.

## Alternatives

- **Naming the transport (webhook, email, device signal) in the schema**: rejected -- exactly the
  ambient-trust shape ADR-0043/ADR-0045 replaced structured references to avoid; the concrete
  transport is an instance's business. `SchemaBinding` plus a `SecretBinding` reference already
  discriminate an ingress without it.
- **Relying solely on the existing effect-gates ordering**: rejected -- that proof concerns internal
  authorization ordering, not the trustworthiness of the triggering input. An external event is
  adversarial in a way a `WorkOrder`-originated process is not; a bounded observation or attention
  step first is a distinct, additional line of defense.
- **A back-reference from `ProcessSpec` to its `EventIngress`**: rejected -- a `ProcessSpec` would
  then depend on a governance contract above it, and more than one same-Realm `EventIngress` can
  validly target the same process. The one-directional `processSpecRef` keeps the process generic.

## Consequences

- The LinkML metamodel adds `EventIngress`, `EventIngressSpec` and the `EVENT` permissible value on
  `ProcessStartTrigger`.
- `execution.rego` adds `corpus.event-ingress.schema-required`,
  `corpus.event-ingress.target-must-be-event`, `corpus.event-ingress.inactive-target` and
  `corpus.process.event-first-effect`; `references.rego` adds the two typed-reference declarations.
- Out of scope, left to a future runtime consumer: no listener, subscription or external call exists
  yet. That consumer must verify the signature against the bound `SecretBinding`, deduplicate by
  event identity within the replay window, classify content before it reaches a step, and purge the
  raw payload at the retention boundary -- retaining only a signed receipt as PostgreSQL recognized
  state, with execution history in Temporal like any other `ProcessSpec` run. An event never creates
  a grant, an owner approval or a connector activation by itself; only a gated process step can.
