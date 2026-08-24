---
title: ADR-0046 — Organization tenant boundary and complete audit ledger
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [16]
enforced_by: metamodel/modules/organization.yaml,modules/project-contract/src/main/java/dev/jumo/contract/ContractLayer.java,modules/control-plane/src/main/resources/db/migration/V15__organization_membership_and_audit_ledger.sql
---

# ADR-0046 — Organization tenant boundary and complete audit ledger

## Decision

Yamaka is the default Organization tenant. Its dedicated Git `.jumo` source is an L1
Organization layer; `home` remains the owner's L2 Realm. Composition order is platform, kits,
organization, then Realm. Kits cannot exceed an Organization or Realm stratum.

Organization contracts are `ORGANIZATION_ONLY`: Organization, access bindings, enrollment policy,
audit retention policy, and retention hold. Owners, administrators, and auditors are explicit Git
bindings. `MEMBER` comes only from an approved OIDC enrollment policy. An owner receives the
administrative prerogative, but none of these roles grants a member Realm's data, secrets, cells,
or effects.

The path selects a Realm. The server resolves the OIDC identity and verifies both Organization
admission and that identity's own Realm membership. It does not accept `jumo_realm` as authority.
Onboarding records a bounded request from a projection-rendered nickname; a separately approved
trusted provisioner owns creation of a private Realm repository and its association.

From V15, PostgreSQL triggers append a sanitized mutation ledger. Earlier entries are labelled
partial. Terminal audit history is retained for `P90D` by default. A current, Git-declared
Organization hold pauses the idempotent daily purge; purge and hold observations are themselves
governance audit events.
