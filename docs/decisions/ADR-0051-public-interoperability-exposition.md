---
title: ADR-0051 — Governed interoperability exposition under /u/{handle}, sealed adapter registry, and ACS PEP
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [9]
---

# ADR-0051 — Governed interoperability exposition under /u/{handle}, sealed adapter registry, and ACS PEP

## Boundary

This ADR defines the normative governance, contract envelope, protocol portfolio, and delivery architecture for public interoperability exposition under `/u/{handle}`.

1. **Governed Envelope & Non-Broadening Hierarchy**:
   - `OrganizationPublicationPolicy` (Organization tenant) sets the allowable adapter registry, organization JWKS public keys, and publication quota.
   - `RealmPublication` (Realm) declares a globally unique `publicHandle`, requires `exposure: PUBLIC_DISCOVERABLE`, and selects an `artifactAllowlist` belonging to the Realm.
   - A Realm may narrow its exposure, never broaden beyond Organization or platform policy.

2. **Sealed Adapter Registry**:
   - The allowed adapter vocabulary is strictly sealed: `jumo-profile-v1`, `bpmn-2.0-v1`, `a2a-v1-read-v1`, `acs-jumo-opa-v1`.
   - User-supplied Rego, dynamic organizational execution bundles, runtime secrets, SecretBindings, and private documents are strictly denied.

3. **Public Surface & Protocol Portfolio**:
   - `GET  /u/{handle}` : Standalone public HTML view (replaces dynamic client API calls to authenticated endpoints).
   - `GET  /u/{handle}/jumo.json` : Signed public manifest containing git SHA, applicable policy digests, and artifact SHA-256 hashes.
   - `GET  /u/{handle}/bpmn/{id}/{version}.bpmn` : Published BPMN 2.0 process exchange projections.
   - `GET  /u/{handle}/a2a/agent-card.json` : Signed A2A 1.0 Agent Card (HTTP_JSON transport only, no streaming, no ambient discoverability directory).
   - `POST /u/{handle}/a2a/v1/message:send` : Unique read-only A2A task (`jumo.public-profile.read`) accepting only structured JSON DataPart for listed artifacts.
   - `GET  /u/{handle}/acs/manifest.yaml` : Public Agent Control System (ACS / AGT) policy PEP manifest.
   - `GET  /u/{handle}/jwks.json` : Organization public JWKS for signature verification.

4. **Policy Enforcement Point (PEP) ACS & OPA Authority**:
   - Incoming A2A tasks pass through an ACS Policy Enforcement Point invoking OPA (`jumo-opa-v1`).
   - Strict `allow` is required; malformed payloads, free text, unknown resources, timeouts, or policy denials fail closed.
   - The A2A task triggers no model execution, no tool execution, no workflow, and no mutation effects.
   - This PEP decides through a dedicated OPA entrypoint, not the internal Realm-principal authorization checkpoint
     (`AuthorizationCheckpointService` / `data.jumo.authz.decision`): the caller is an unauthenticated external
     agent with no Realm principal or declared internal capability, and the internal capability registry stays
     scoped to internal effect-producing actions. The controller gathers RealmPublication/OrganizationPublicationPolicy
     facts and calls OPA; OPA remains the sole decision authority, fail-closed on any PDP error.

5. **CI Auto-Publication Exception**:
   - A dedicated CI workflow on `main` re-runs deterministic validations, builds the immutable static bundle, acquires a scoped OIDC token to OpenBao Transit, signs manifests, and performs an atomic directory promotion to `/srv/jumo-exposition/current`.
   - This read-only publication is a targeted, explicitly bounded exception to the general owner-gated release rule. Failed checks preserve the previous atomic bundle.

## Alternatives

- Dynamic on-the-fly rendering from internal PostgreSQL/Temporal APIs was rejected: it creates security boundary leaks and authentication bypass risks.
- Ambient A2A tool invocation was rejected: third-party agent interactions are strictly read-only and pre-projected in V1.

## Consequences

- Replaces `/u/[id].vue` with a secure, static-manifest driven presentation.
- OPA rules enforce unique handles, valid org membership, adapter allowlists, and absence of private/secret references.
- Caddy applies strict nosniff, noindex, and unified 404 responses for missing/unpublished handles.
