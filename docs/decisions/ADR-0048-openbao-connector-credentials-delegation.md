---
title: ADR-0048 — OpenBao connector credentials custody and short-lived delegated leases
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [6]
---

# ADR-0048 — OpenBao connector credentials custody and short-lived delegated leases

## Boundary

This ADR extends ADR-0042 to encompass connector credentials custody, OAuth lifecycle, and delegated machine access.

1. **Connector Credentials in OpenBao**: OpenBao KV-v2 secret engine is extended to store connector credentials, including OAuth client registrations, refresh tokens, access tokens, API keys, and application tokens.
2. **Principal and Realm Binding**: Connector credentials are explicitly scoped to either an individual `Principal` (user-level connector access, e.g. personal GitHub token or Google OAuth session) or a `Realm` (shared realm-level integration).
3. **Delegated Short-Lived Machine Leases**: When an execution machine requires connector credentials to execute an authorized WorkOrder or discovery task, the control plane issues a short-lived, non-renewable OpenBao token scoped strictly to the paths declared in the WorkOrder's secret bindings. The machine fetches credentials directly from OpenBao over internal TLS during lease lifetime.
4. **Machine-Local CLI Credentials Retained**: User-level CLI subscription credentials (e.g. Codex or Claude interactive credentials) remain sealed locally on the machine per ADR-0020 / ADR-0049 and are not stored in OpenBao.
5. **Revocation and Quarantine**: Revoking a credential immediately marks the associated session as `AUTH_REQUIRED`, revokes any active delegated OpenBao leases, and prevents subsequent execution without affecting unrelated connectors or Realm operations.
6. **Single-use response wrapping**: The control plane requests one non-renewable child token per `SecretBinding`, scoped to one exact read path and bounded by the execution lease, then returns only an OpenBao response-wrapping token over the authenticated machine channel. The machine unwraps once and reads the secret directly from OpenBao. Secret delivery uses `POST`, rejects replay, and sends `Cache-Control: no-store`.
7. **Restart-safe revocation**: PostgreSQL stores the child token accessor encrypted under the platform envelope key and records only its SHA-256 digest in audit projections. Storing only the digest is insufficient because OpenBao revocation requires the exact accessor. The plaintext token, wrapping token, credential value, and authorization headers are never persisted or logged.
8. **Discovery credentials are distinct**: MCP discovery starts without a credential. An upstream that requires authentication may resume only after owner consent with a separate read-only binding marked for discovery, a maximum delegated lifetime of `PT2M`, and no tool invocation or external effect.

## Alternatives

- Routing connector credentials through the control plane per invocation was rejected: it would expose plaintext tokens in transit through control plane memory and logs.
- Storing connector credentials in local machine storage was rejected: connector credentials must be centrally revocable and auditable across multiple machines within the Realm.

## Consequences

- `SecretBroker` and OpenBao policies manage connector credential paths (`jumo/connectors/...`).
- Machines use ephemeral token delegation for connector secret access.
- Delegated responses are wrapped for one retrieval and remain revocable after a control-plane restart.
- OAuth token exchanges and refresh cycles write directly into OpenBao via dedicated credential brokers.
