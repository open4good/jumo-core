---
title: ADR-0042 — OpenBao SecretBroker resolution and zero-credential isolation
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0042 — OpenBao SecretBroker resolution and zero-credential isolation

## Decision

The control plane resolves runtime credentials declared in `SecretBinding` contracts via a dedicated `SecretBroker` backed by OpenBao KV-v2 secret engine.

1. **Resolution Semantics**: `SecretBinding.spec.runtimeRef` paths (e.g. `jumo/model-worker/anthropic`, `jumo/forge/github`) are resolved dynamically by querying the OpenBao KV-v2 endpoint (`/v1/{mount}/data/{path}`) over internal HTTP/TLS using standard `X-Vault-Token` authentication.
2. **Fail-Closed Availability**: If the OpenBao server address (`jumo.secrets.openbao.address`) is unconfigured or unreachable, `SecretBroker` fails closed with a typed exception rather than falling back to permissive defaults or ambient credentials.
3. **Zero-Credential Isolation (ADR-0020)**: User CLI subscription credentials remain strictly confined within local execution cells. The control plane and OpenBao never hold or broker user subscription bearer tokens; `SecretBroker` resolves only platform-managed provider keys and infrastructure secrets.

## Alternatives

- Storing plain-text credentials in PostgreSQL or Git manifests was rejected: violated zero-credential and confidentiality guarantees.
- Directly coupling each control plane service to OpenBao REST API was rejected: a centralized `SecretBroker` contract abstracts secret retrieval and enables hermetic unit testing without live vault dependencies.

## Consequences

- `SecretBroker` interface and `OpenBaoSecretBroker` implementation provide unified KV-v2 secret resolution.
- `SecretBrokerConfiguration` injects `SecretBroker` beans conditioned on environment configuration.
- Secret bindings in `.jumo/secret-bindings/` resolve deterministically to runtime secrets at deployment time.
