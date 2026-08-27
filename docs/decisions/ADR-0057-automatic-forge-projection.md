---
title: ADR-0057 — Automatic Forge projection after deterministic validation
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0057 — Automatic Forge projection after deterministic validation

## Decision

A successful deterministic validation of a bounded `ChangeProposal` opens its draft Forge pull
request automatically. The control plane commits validation evidence before making the Forge call;
the proposal identifier and content digest make a retry idempotent.

The generic owner-approval rule is policy-driven. `document.change.propose` is the sole exception:
it does not require a separate owner approval to create a pull request. Validation, declared write
scope, exact base SHA, capability obligations and independent review remain mandatory. A pull request
is not a merge or a production release.

The same removal applies to the existing `ChangeSetProposal` projection gate. Its manifest, ordered
phase sequence, exact file digests and resumable idempotence remain mandatory. A repository declared
`MUTUAL_CONSENT` still requires the active consent of every co-owning Realm before its pull request
is created.

## Alternatives

- A second owner click between validation and pull-request creation was rejected: it duplicates the
  already recorded policy decision without strengthening the bounded draft projection.
- Automatic merge was rejected: cross-provider review, applicable merge policy and production release
  approval remain separate effects.
- A local-only exemption was rejected: local and production must obey the same policy semantics.

## Consequences

- The owner-approval API and Cockpit action for a single Forge projection are removed.
- Policy continues to require owner approval for every effect except the explicitly exempt Forge
  projection, and additional repository co-owner consent remains enforced.
