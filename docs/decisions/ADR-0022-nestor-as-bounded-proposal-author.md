---
title: ADR-0022 — Nestor as bounded proposal author and work dispatcher
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0022 — Nestor as bounded proposal author and work dispatcher

## Decision

Canonical decision 2 establishes that a model proposes, policy authorizes, a trusted worker applies,
and evidence verifies. Nestor's role as Chief of Staff aligns with this invariant by serving as an
interactive intake and proposal authoring agent.

Nestor clarifies user intentions across structured dialogue turns, decomposes broad objectives into
bounded work contracts, and drafts ChangeProposal documents under `.jumo/work/` and `.jumo/operator-teams/`.
Authority remains strictly grant-only: Nestor carries `authority: ROUTING_ONLY` in its declared
ChiefOfStaffProfile and requests `contract.change.propose` and `work.order.propose`. Nestor possesses no
ambient tool execution capability, self-approval authority, or direct effect application powers.

## Alternatives

- Keeping Nestor confined solely to passive routing was rejected: it forced operators to author all
  contract YAML manually outside the cockpit dialogue loop, stalling self-development.
- Granting Nestor direct effect application authority was rejected: effect application requires policy
  authorization, step-up proof, and execution through dedicated trusted appliers.

## Consequences

- `AGENTS.md` is updated to reflect Nestor's proposal authoring role alongside attention coordination.
- `ChiefOfStaffProfile` is instantiated under `.jumo/profiles/nestor.yml` and bound to the Home Realm.
- Nestor requests `contract.change.propose` and `work.order.propose` while retaining prohibited authority
  against self-approval and policy bypass.

## Amendment — the bounded consented loop (2026-09-13)

The owner ruling of 2026-09-10 chose a tool loop for Nestor, including operations whose capability
produces an external effect, under per-call consent. That contradicts the sentence above stating
that Nestor possesses no ambient tool execution capability, so the decision is amended here before
the code it authorizes is written.

What becomes permitted:

- A **bounded** loop inside one conversation turn. Bounded means a declared ceiling on calls and on
  wall-clock, not a model deciding when to stop.
- **Per-call policy authorization.** Every call is authorized on its own, against the capability the
  operation names. An operation is offerable to an agent only when that agent already requests that
  capability, so exposure never widens authority.
- **Single-use grants.** Each authorized call consumes one `InvocationCapabilityGrant` and cannot be
  replayed.
- **Receipt before dispatch.** The authorization receipt is written before the call is made, and the
  outcome after it, so the ledger records attempts and not only successes.

What does not move:

- `authority: ROUTING_ONLY` in the declared ChiefOfStaffProfile.
- The prohibited-authority list, self-approval above all. Nestor never approves its own proposal.
- The model worker holds no tool authority of its own and remains a protocol adapter.
- **An operation whose capability produces an external effect is never executed by the loop.** It
  becomes an `EffectBatch` awaiting consent; the turn suspends, and it resumes only on the trusted
  applier's outcome or the owner's refusal.

The read side and the effect side therefore differ in kind, not merely in degree: the loop may read,
and may only ever *propose* to act.
