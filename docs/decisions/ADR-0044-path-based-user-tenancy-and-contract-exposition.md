---
title: ADR-0044 — Path-based routing and contract exposition (/u/<nickname>)
decisions: [4]
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0044 — Path-based routing and contract exposition (/u/<nickname>)

## Decision

The Jumo web application and control plane abandon per-tenant DNS subdomains (e.g. `my.yamaka.me` or `<nickname>.yamaka.me`) in favor of single-origin path-based routing:

1. **Root Cockpit Workspace**: The root URL `https://yamaka.me/` serves as the primary cockpit dashboard and execution surface for the authenticated pilot. No `/my` route or subdomain is created.
2. **Path-Based Contract Exposition**: Contract portfolios, agent cards, and governed specifications for a specific pilot or Realm are exposed under `https://yamaka.me/u/<nickname>`.
3. **Single Ingress and TLS Simplicity**: Ingress reverse-proxy configuration (Caddy) operates on a single canonical domain (`{$JUMO_DOMAIN}`) without requiring wildcard DNS or multi-certificate management.
4. **Cohesive Authentication and Service Worker Scope**: OIDC PKCE tokens and PWA service workers operate within a single origin, avoiding cross-domain cookie isolation and navigation fallback traps.
5. **Decoupled Realm Resolution**: The client-side runtime resolves Realm context from the URL path (`realmIdFromLocation`) when exploring exposed user spaces, while defaulting to the authenticated pilot's Realm on the cockpit root. The path only selects context: the API resolves the OIDC identity and verifies Organization admission plus direct Realm membership server-side.

## Alternatives

- **Per-Tenant Subdomains (`<nickname>.yamaka.me`)**: Rejected due to operational complexity in TLS provisioning, DNS propagation latency, and authentication session partitioning across subdomains.
- **Dedicated `/my` Routing Alias**: Rejected to preserve `https://yamaka.me/` as the single canonical home cockpit for the active pilot.

## Consequences

- Onboarding journey steps (`the-onboarding-trip.yml`, `JourneyIdentityStep.vue`, `JourneySummaryStep.vue`) display `yamaka.me/u/<nickname>` as the contract exposition point.
- The dedicated page `apps/web/pages/u/[id].vue` renders public and federated contract expositions.
- Client API helpers resolve Realm context from path locations dynamically without baking tenant hostnames.
