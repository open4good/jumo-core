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
