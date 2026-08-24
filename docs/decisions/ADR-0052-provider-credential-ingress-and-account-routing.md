---
title: ADR-0052 — Provider credential ingress and named-account routing
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [10]
---

# ADR-0052 — Provider credential ingress and named-account routing

## Boundary

`ProviderAccount` is the unit of provider identity, entitlement, credential custody and routing.
Each account declares one `secretBindingRef`; the binding is the sole approved OpenBao path for
that account's credential. Git declares neither a credential value nor a credential fingerprint.

After a contract revision declaring both objects is available, the Realm owner may submit or
rotate a credential through the cockpit credential-ingress endpoint with fresh step-up
authentication. The ingress verifies the account and binding, writes only the declared OpenBao
KV-v2 path, and atomically renders the account's key file for the model worker. Request bodies,
logs, caches, responses, audit records and evidence never contain the value or a derivative.

For a worker requirement profile, compatible accounts are ordered by unique ascending
`ProviderAccount.spec.routing.priority`. The router carries the selected account identity through
to the worker. It may try another account only when the primary account declares
`USE_AUTHORIZED_ALTERNATIVE`, the failure is quota exhaustion, network unavailability or 5xx, and
the target occurs in `alternativeProviderAccountRefs`. Authentication, contract and request errors
are terminal. Routing evidence records account identifiers and reason codes only.

## Consequences

Several OpenAI keys are represented as several named accounts, preserving separate billing,
quota, model and priority facts. A LIVE stack may start with no active credential; it reports a
typed capability-level unavailability until the owner activates a declared account through the
ingress. Legacy ambient provider-key files are not a routing path.
