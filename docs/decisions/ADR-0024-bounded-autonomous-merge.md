---
title: ADR-0024 — Bounded autonomous merge with cross-provider review
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0024 — Bounded autonomous merge with cross-provider review

## Decision

To operationalize the self-development loop ("Jumo develops Jumo") while maintaining rigorous safety
and governance boundaries, change proposals targeting Ring 2 (Agent Behavior) and Ring 3 (Governed Project)
may be merged autonomously when and only when all five invariant gates are verified:

1. **Exact SHA CI Verification**: The deterministic CI verification pipeline is green on the exact
   commit SHA returned by the execution cell.
2. **Cross-Provider Agent Review**: An independent reviewer operator (from an independence group distinct
   from the authoring model's provider) has evaluated the proposal and emitted an affirmative review signal.
3. **Corpus Budget Ratchet**: The resulting corpus does not exceed the ratcheted non-normative lines budget.
4. **Scope and Authority Invariant**: The change does not modify Ring 0 root of trust or weaken platform policy.
5. **No Commit Divergence**: The change applies cleanly without base commit drift.

If any of these gates fails, unattended merge is refused, the proposal is marked `BLOCKED`, and an
attention item is routed to the Realm owner for step-up adjudication. Ring 0 and Ring 1 modifications
continue to require explicit owner cryptographic approval.

## Alternatives

- Requiring manual owner clicks for every minor change was rejected: it introduces an operational
  bottleneck that halts continuous self-development.
- Fully unconstrained autonomous merge without cross-provider review was rejected: model collusion or
  hallucinated reviews violate the multi-agent independence invariant.

## Consequences

- The automated gating pipeline evaluates cross-provider reviewer signoffs alongside deterministic CI.
- Autonomous merge is permitted strictly for Ring 2 and Ring 3 changes with verifiable evidence.
- The owner is notified via the Attention Queue whenever autonomous merge is blocked or requires escalation.
