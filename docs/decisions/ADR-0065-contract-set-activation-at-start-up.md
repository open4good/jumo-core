---
title: ADR-0065 — contract-set activation at control-plane start-up
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [8]
---

# ADR-0065 — contract-set activation at control-plane start-up

## Decision

When the control plane is ready it activates the home Realm's contract set itself, on one of two
bases, each recorded on the recognized snapshot:

- `PINNED_RELEASE` — the Realm source is pinned. The revision is the `realm-home` SHA in
  `contract-sources.lock.yml` and must be contained in the Realm repository's `origin/main`. The
  owner decision reference names the application commit that last wrote the lock.
- `LOCAL_DEV` — the Realm source is a working tree. The revision is its `HEAD`. It is refused under
  the production profile, and every snapshot recognized on it is non-promotable.

Both revalidate the composed corpus at that revision with LinkML and Rego first. Commit signature
and required CI are still observed and stored as observed — never recorded as passed when they did
not — but on these two bases they do not gate. A refusal never stops the plane: it logs a named
reason, no set becomes active, and execution cell leases stay refused.

The Realm is read from its own contract source (`JUMO_CONTRACT_REALM_PATH`, else the pinned
`realm-home`), never from the application repository, which holds no Realm document (D4).

## Relationship to ADR-0063

This amends ADR-0063 point 6, it does not replace it. A new document because `adr_lines_max` is
measured per document and ADR-0063 already sits on the ceiling.

What remains true: the pull reconciler of point 6 keeps its five proofs — exact SHA on the allowed
branch, commit signature, required CI, LinkML and Rego, owner decision — and stays the only path that
activates on the `HOT_PULL` basis. Session plans still carry the contract-set digest, and a lease
still refuses without an active set.

What this amends: activation no longer has to wait for that reconciler. Its trigger was never wired,
so no running stack ever held an active set and no lease could be granted.

## What is given up

Owner ruling, 2026-09-24: start-up activation on `PINNED_RELEASE` with the lock alone standing for
signature and CI, and `LOCAL_DEV` in development. Stated plainly so it can be reversed:

- The Realm commit is trusted because the lock names it, not because it is signed or passed CI.
  Realm commits are unsigned and no CI status is readable today; whoever runs
  `scripts/release/pin-contract-sources.sh` decides what becomes active on the next start.
- The switch is no longer hot: a new Realm revision takes effect at the next start, and rollback is a
  re-pin followed by a restart, not a reactivation of a prior digest on a live plane.
- A deployment whose Realm source carries no Git history cannot prove `origin/main` containment, so
  it refuses on `PINNED_RELEASE` rather than activating unproven.

When Realm commits are signed and CI status becomes readable, the pull reconciler can take over again
without changing this document's rules for the two bases above.
