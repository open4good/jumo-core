---
title: ADR-0012 — supervised executable organization with a CLI worker substrate
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [2]
---

# ADR-0012 — supervised executable organization with a CLI worker substrate

## Decision

The isolated model worker only drafts a governed Realm document. It has no repository, PostgreSQL,
forge credential, native tool authority, host port, or general egress, and reaches the control
plane, Temporal, and a fixed-upstream provider egress service on three separate internal networks.
Anthropic and OpenAI are separately declared, explicitly selected per dispatch, and are never an
automatic fallback or a review authority. Provider keys exist only in OpenBao, rendered read-only
into the model-worker runtime volume, and are not environment values, Git content, Temporal
payloads, logs, prompts, or evidence. A dispatch stays bound to the document path, release
revision, content hash, provider, model, and a fresh owner confirmation. Secret-marked documents
are refused, and so are documents whose front matter declares them normative: the corpus that
states these rules is not a subject a model drafts against.

A second, `LOCAL_CLI_CONTAINER` substrate is admissible alongside the isolated model worker, but
only without a mounted home, native connectors or MCP servers hidden in its image, or a Jumo-held
provider credential — each of which would give it reach no reviewer sees. It is declared under
these conditions:

- `nativeToolAuthority` is `DISABLED` and `homeState` is `ISOLATED_PER_INVOCATION`, both constant-valued in the schema.
- Model access is `PLAN_DIRECT` with `PLAN_SESSION_ONLY` credentials: Jumo holds no key for it.
  `OPENBAO_RENDERED_FILE` stays reserved for `MODEL_WORKER_PROCESS`; a gateway token is refused
  because it would move a Jumo-managed provider credential into the egress proxy.
- Its account use is `HOLDER_OPERATED` against a separately declared `ProviderAccount` whose
  entitlement permits holder operation, and a plan substrate cannot borrow a gateway-routed account.
- External reach is only `grantedOperationRefs`, none resolving to an external-effect capability.
  A writable workspace is isolation, not authority, and does not make the worker an applier.
- The substrate ships `DECLARED` with a placeholder digest until a reviewed release pins a signed
  image digest and sets it `ENABLED`.

A same-Realm human principal bears the `reviewer` role, until an independent reviewer replaces the
arrangement, and records `change.review` only; that result and the owner's effect approval remain
distinct audit actions, and an agent's static analysis or test output is evidence, not review
authority. Two roles do not count as two actors when one agent bears both. Matter and Episode
remain recognized PostgreSQL state; persisted workflow payloads carry only IDs, revisions, hashes,
and the selected provider and model.

## Alternatives

Direct control-plane provider calls stay rejected: they would combine recognized state with a
provider credential. A gateway-routed CLI substrate was rejected because the egress proxy would
have to hold and inject the provider key. Automatic provider fallback and AI review stay rejected;
neither is independent human review.

## Consequences

The CLI worker image, its execution path, and evidence wrapping its stdout, stderr and exit codes
remain undeclared: declaring the substrate is a contract, not a capability. Provider keys carry a
declared rotation window the deployment preflight holds, refusing a release whose rendered keys
have aged past it. CI stays deterministic and never needs live credentials. Before unattended
production, the reviewer arrangement must be replaced by an independent human reviewer with restricted branch and deployment protection.
