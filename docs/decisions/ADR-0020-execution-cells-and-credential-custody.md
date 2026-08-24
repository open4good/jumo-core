---
title: ADR-0020 — execution cells, local credential sealing, and outbound cell protocol
status: accepted
normative: true
audience: PROJECT_SCOPED
supersedes: [ADR-0012]
---

# ADR-0020 — execution cells, local credential sealing, and outbound cell protocol

## Decision

This ADR supersedes ADR-0012 and updates the execution architecture for Jumo workers.
`WorkerSubstrate` is decoupled from compute placement and credential custody. Compute placement is represented by `ExecutionCell` boundaries (`PLATFORM`, `HOSTED_VM`, `DESKTOP`, `ANDROID`).

1. **Cell Boundary and Pairing**: Real CLI execution dispatches run only on a dedicated `HOSTED_VM` execution cell bound to the Realm owner. The host binds the mTLS control listener solely to `10.203.11.1:8443`, firewalled to guest `10.203.11.2`; the guest initiates every pairing, status refresh, lease poll, and evidence call. No public or management listener, host mount, Docker socket, database, forge, or registry credential crosses into the guest.
2. **Credential Custody**: Provider logins occur directly between holder, provider, and cell. Provider credentials, refresh tokens, and session states are sealed inside cell-encrypted local storage bound to the cell identity. The control plane receives only opaque `ProviderSessionBinding` fingerprints, status, and expiry metadata, and never receives bearer tokens or provider keys.
3. **Invocation Isolation**: For each invocation, the cell materializes a minimal provider home in `tmpfs` outside the workspace, executes the CLI inside an unprivileged container with no host mounts or Docker socket, captures token refreshes back into the local vault, and destroys the temporary home upon completion.
4. **Evidence & Sanitization**: Raw CLI output (stdout, stderr, provider streams, diffs) is untrusted input. Evidence collection normalizes and sanitizes events, quarantining secret-bearing bytes inside the cell. Secret material is never uploaded, hashed, logged, or placed in evidence bundles.

## Alternatives

- Storing provider subscription tokens in OpenBao or PostgreSQL was rejected: it would centralize user credentials in the control plane and violate zero-credential principles.
- Inbound SSH, public HTTP, and general host control of worker VMs were rejected: the narrowly bound mTLS listener accepts only the dedicated guest certificate and does not create a management channel.
- Blanket device or workspace control grants were rejected: every capability grant remains short-lived, explicit, and Realm-scoped.

## Consequences

- `EdgeCell`/`EDGE_CELL` are retired from active contracts and policy; `ExecutionCell` uses only `PLATFORM`, `HOSTED_VM`, `DESKTOP`, or `ANDROID` placement.
- Provider session bindings retain opaque fingerprints only.
- Live CLI execution requires an active ExecutionCell paired to the target Realm.
- The host CA/server key stay on the host; the guest generates and retains its client key. Only a CSR reaches the host and only its signed client certificate plus CA certificate return.
