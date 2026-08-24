---
title: ADR-0043 — Corpus composition, layered provenance, and kit portability
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [15, 16]
---

# ADR-0043 — Corpus composition, layered provenance, and kit portability

## Decision

The Jumo control plane and contract engine treat `.jumo` as a virtual composed engine where identity, precedence, and portability are governed across four distinct layers.

1. **Layered Provenance vs Namespace**: Provenance is determined by physical source origin (`PLATFORM`, `KIT:<alias>`, `ORGANIZATION`, `REALM`). The reverse-DNS `namespace` is a logical discriminator, not a layer identifier. Platform contracts use `dev.jumo.core`; Organization contracts use `<organizationId>.jumo.dev`; Realm contracts use `<realmId>.jumo.dev`.
2. **Asymmetric Composition Precedence**: Contracts compose in the frozen order Platform < Kit < Organization < Realm according to `SEALED`, `ADDITIVE`, `OVERRIDABLE`, `ORGANIZATION_ONLY`, and `REALM_ONLY`. A kit priority only orders kits and cannot cross an Organization or Realm boundary.
3. **Composite Loader and Immutability**: `CompositeContractLoader` resolves L0 Platform, imported Kits, L1 Organization, and L2 Realm at named source revisions. Virtual composition happens in-memory at load time without git submodules or merge commits.
4. **Kit Portability Pipeline**: External skill kits declare a `jumo-kit.yaml` manifest. The `KitResolver` validates semantic version compatibility, calculates SHA-256 integrity digests for all contracts and static assets, expands exported profiles, and produces immutable `KitLock` and `KitBinding` contracts recorded via change proposals.
5. **Decoupled User Experience**: User interfaces render projections dynamically through `ProjectionRenderer` from `ProjectionSpec` contracts and classify journeys via `spec.category` and `spec.icon`, avoiding application rebuilds when adding new journeys or skills.

## Alternatives

- **Git Merge / Submodules**: Rejected because git merges conflate versioning histories, create merge conflict friction, and bypass fine-grained governance rules.
- **Symmetric "Last-Write-Wins" Precedence**: Rejected because platform security invariants and authority boundaries must not be silently overridden by imported third-party kits.

## Consequences

- All Git contract classes in the LinkML metamodel declare explicit `jumo.composition` rules.
- `CompositeContractLoader` and `KitResolver` provide deterministic, multi-layer contract loading and validation.
- Rego policies enforce composition rules in CI and runtime checks.
- The `import-skill` journey enables declarative importation of external skills directly into user realms.
