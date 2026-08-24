---
title: Canonical v0 decisions
status: accepted
last_updated: 2026-08-15
normative: true
audience: PROJECT_SCOPED
---

# Canonical v0 decisions

1. Git stores desired and contractual state; PostgreSQL stores recognized business state; Temporal
   stores execution history. A pull request is an external projection, not canonical state.
2. A model proposes, policy authorizes, a trusted worker applies, and evidence verifies. Execution
   cells retain provider credentials; routing is per invocation and projected tool authority is
   grant-only, never ambient.
3. Production releases are owner-triggered for an explicit `main` SHA only after required CI for
   that SHA succeeds. GitHub branch protection is unavailable on the current private plan; direct
   pushes are residual owner risk compensated by CI evidence, immutable provenance, environment
   approval, release-SHA validation, and audit URLs.
4. An Organization composes governance contracts for member Realms but never grants cross-Realm
   data, secret, execution-cell, or effect access. A path selects a Realm; server-side membership,
   not an OIDC Realm claim, authorizes it. Mutation ledger coverage is explicit from its migration.
5. Compute boundaries are governed by durable `ExecutionMachine` contracts per Realm; `ExecutionCell`
   is an internal ephemeral lease bound to an exact WorkOrder, git SHA, and contract digest (ADR-0047).
6. OpenBao extends to connector credentials with short-lived delegated leases issued to machines (ADR-0048).
7. AI CLI workers execute in isolated rootless OCI runtimes under strict output schemas with no auto-repair,
   and evidence is collected exclusively after secret-aware sanitization (ADR-0049).
8. Connectors are LinkML-governed packages under `.jumo/connector-packages/`, built through a 10-step journey
   with target-machine discovery, independent appraisal, and dual-consent for irreversible effects. The shared
   MCP registry records sourced catalog signals only and grants neither installation nor execution (ADR-0050).
9. Public interoperability exposition under `/u/{handle}` is governed by `OrganizationPublicationPolicy` and
   `RealmPublication` with sealed adapters, signed manifests, A2A read tasks gated by ACS/OPA PEP, and
   CI auto-publication of static read-only projections (ADR-0051).
10. Provider credentials enter only through the owner step-up ingress into their declared OpenBao binding;
    named provider accounts route deterministically and may use only declared fallback accounts (ADR-0052).
11. KVM guests boot only from verified pinned cloud images and may reach a Freebox only through an approved,
    dedicated second NIC; Freebox application tokens remain in OpenBao (ADR-0053).
12. Nestor coordination profiles may vary latency and cognitive depth, but every action candidate is
    structured, catalog-bound and non-authoritative; contextual risk can only strengthen policy
    obligations and never grants execution authority (ADR-0019).
13. Advisors are stable role identities with declared, selectable engagement options. Conversations
    address a role in an explicit Realm or Project context; Nestor is a participant only through an
    explicit coordination invocation, never ambient transcript or memory access (ADR-0054).
14. Each worker invocation is attributed to its typed role and every capability grant is recognized
    only from PostgreSQL's sanitized append-only lifecycle ledger; tokens, arguments, raw results,
    and secrets are excluded from that ledger and its projections (ADR-0055).
15. The `jumo.dev/v1` metamodel names no contract instance; the execution platform names no
    instance identifier; instance-specific behaviour is declared in the instance. Recognized-state
    coverage by the metamodel is measured and can only grow (ADR-0043, ADR-0045).
16. The Realm `home` composes two sources of the same REALM layer: a public overlay in the
    application repository (`jumo/.jumo`, the Jumo product's WorkOrders and delivery TeamSpecs)
    and the private `jumo-gof` source (principals, credentials, and Realm-owned declarations); a
    duplicate `(kind, id)` between the two is refused (ADR-0043, ADR-0046).
