---
title: ADR-0054 — Advisor profiles and addressed conversations
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [13]
---

# ADR-0054 — Advisor profiles and addressed conversations

## Boundary

An Advisor is a single stable role identity. A Realm may declare exactly one `AdvisorProfile` for a
non-Chief-of-Staff role. The profile owns one or more named `dialogueOptions`, each binding a
`CapabilityProfile` to an `EngagementMethod`, with exactly one default. Planned activity remains a
`Practice` only when its `ProcessSpec` is TIMER-triggered; inter-project requests remain
`SolicitationContract`s.

Every conversation has a typed target (`CHIEF_OF_STAFF` or `ADVISOR`) and an explicit context
(`REALM` or `PROJECT`). Project context requires a project reference. Advisor threads require a
subject and select only an option declared by the target profile. The participant set is the
requester and the addressed role holder. Nestor can read a transcript only through an explicitly
authorized coordination invocation; no Advisor turn receives Nestor memory or a transcript by
ambient prompt injection.

For an AGENT holder, Jumo resolves `AdvisorProfile` through its engagement method, prompt,
worker requirement and provider account, and refuses the turn if that chain is incomplete. For a
HUMAN holder, Jumo records the request and a content-free attention item; only the holder's valid
`PrincipalIdentityBinding` may answer. A FEDERATED_PEER is visible but non-dialoguable until a
policy-authorized write transport exists. Identity bindings identify a principal and confer no
authority or prompt content.

## Consequences

Nestor remains one identity even when its engagement options differ. Role topology and execution
authority stay separate: modification rings describe change scope, not hierarchy. Advisor and
human reply routes fail closed when declarations, bindings or a route are absent.
