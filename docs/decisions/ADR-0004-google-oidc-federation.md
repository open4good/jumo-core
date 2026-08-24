---
title: ADR-0004 Google OIDC federation
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [4]
---

# ADR-0004 Google OIDC federation

## Decision

Google is federated into the `jumo` Keycloak realm as an additional identity provider, not a
replacement for local password login. A Google login only succeeds for an email already present in
`JUMO_WHITELISTED_EMAILS` or the realm owner: Keycloak's `jumo-whitelisted-google` first-broker-login
flow (`idp-detect-existing-broker-user` then `idp-auto-link`, both required) auto-links a matching
existing user and refuses everyone else. There is no Google self-registration path. Provisioning is
optional and non-fatal: absent `JUMO_GOOGLE_CLIENT_ID`/`JUMO_GOOGLE_CLIENT_SECRET`, the realm stays
exactly as it was before this ADR.

## Rationale and risk

Provider-agnostic identity is the control plane's design (`OidcPrincipalResolver` resolves the
`email` identity and deliberately ignores the provider-specific `sub`). Realm selection is now
authorized by server-side Organization and Realm membership rather than `jumo_realm`, so adding
Google costs no provider-specific authorization code. Whitelist-by-email keeps the account-creation
boundary in one place (Keycloak) instead of splitting it between Google's audience and Jumo's. The
risk this defers rather than closes: WebAuthn step-up (LoA 2) enrollment is currently only wired for
the password-created owner account, so a Google-only whitelisted user has no step-up path yet -- out
of scope here, tracked as a prerequisite before any future removal of password login.

## Operations

`scripts/release/provision-keycloak.sh` reads `JUMO_GOOGLE_CLIENT_ID` from `runtime.env` and
`JUMO_GOOGLE_CLIENT_SECRET` from the short-lived, trap-deleted `keycloak.secrets` file -- never the
long-lived runtime environment. Local password login is unaffected and remains the fallback if the
Google IdP is ever misconfigured.
