---
title: ADR-0045 — Typed contract references and contextual resolution
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [15]
---

# ADR-0045 — Typed contract references and contextual resolution

## Decision

1. **Canonical contract identity**: A contract identity is the canonical triple `(kind, namespace, id)`. The provenance layer (L0 Platform, L1 Realm, L2 Kit) is not part of the reference: it is resolved exclusively by the composite loader's composition rules and reported as evidence.
2. **Typed structured references**: Any reference from one Git contract to another Git contract becomes a structured `ContractReference` object:
   ```yaml
   kind: RoleDefinition
   namespace: dev.jumo.core
   id: lead-architect
   ```
3. **Slot naming convention**: Every contract-reference field follows the suffix convention `<optional semantic qualifier><TargetContractKind>Ref` (or `Refs` for collections):
   - `roleDefinitionRef`, `producerRoleDefinitionRef`, `verifierRoleDefinitionRef`
   - `agentDefinitionRef`
   - `teamSpecRef`, `eligibleTeamSpecRefs`
   - `workerRequirementProfileRef`
   - `projectRef`
   The suffix fixes the target type; the optional prefix expresses the relation's semantic role.
4. **Scalar non-contractual references**: References to non-Git-contract material (`ConfigurationRef`, URLs, `DecisionReference`, `CapabilityName`, internal step identifiers) remain explicit scalar types and are not edges of the contract graph.
5. **Implicit, metamodel-driven resolution**: No `ContextProjectionSpec` and no hand-coded Java relational registry is introduced. The relation catalog (`context-catalog.json`) and the Java reference extractor are generated from the LinkML schema.
6. **Two-hop bounded exploration with cycle guard**: The resolver explores outgoing and incoming contract relations up to a maximum of 2 hops, deduplicates nodes and edges, and breaks any cyclic loop immediately.
7. **Overlaid state**: Contextual state is rendered as sealed overlays that never merge with contractual truth:
   - Git / `.jumo`: contractual and desired state.
   - PostgreSQL: recognized business state (via the `context_state_link` table).
   - Temporal: execution history.
8. **Read-only resolver with secure redaction**: The resolver is strictly read-only. Sensitive nodes such as `SecretBinding` are redacted at the source (topology and lifecycle only, no key, variable, or physical path exposed).

## Alternatives

- **Plain scalar references (`operatorRef: implementer`)**: rejected — ambiguous across namespaces and kits, and not mechanically introspectable by generators without manual configuration.
- **Physical file paths (`ref: .jumo/operators/implementer.yml`)**: rejected — couples contracts to the physical tree and breaks multi-source portability.
- **Unbounded dynamic resolution**: rejected to prevent combinatorial graph explosion and guarantee strictly deterministic API response times.

## Consequences

- The LinkML metamodel formalizes `ContractReference` and exports the `context-catalog.json` relation catalog.
- Every `.jumo` contract is migrated to structured references and the suffix convention.
- The API exposes the universal route `GET /api/web/v1/realms/{realmId}/contexts/{kind}/{namespace}/{id}`.
- The Nuxt cockpit drops kind-specific detail views and adopts the canonical route `/context/:kind/:namespace/:id`.
