---
title: ADR-0060 — Execution toolchain contract
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [1, 5, 7, 14, 15]
---

# ADR-0060 — Execution toolchain contract

## Decision

`ExecutionToolchain` is a portable, Realm-owned Git contract declaring a pinned, verifiable
non-AI execution environment: an immutable artifact identity (`reference` and a `sha256:`-pinned
`digest` -- a tag or a floating build is not evidence of what ran) and a finite, non-empty tool
inventory (`name`/`version` pairs). It names no product-specific toolchain in the schema itself;
Java, Maven, an LSP, Node, or any other concrete environment is declared only by an instance.

`WorkerRequirementProfile` gains `requiredExecutionToolchainRefs` and `WorkerSubstrate` gains
`providedExecutionToolchainRefs`, both typed `ContractReference` collections per ADR-0045.
Absent by default: an AI-only task requires none, and a CLI-only substrate provides none. Every
reference must resolve to a same-Realm `ExecutionToolchain`; a requirement whose toolchain no
same-Realm `WorkerSubstrate` declares providing is refused. `ExecutionToolchain` describes
environment sufficiency only -- it grants no connector authority, selects no provider, custodies
no credential, and opens no arbitrary host-shell execution path. It is distinct from `WorkerCli`
(ADR-0049), which qualifies an AI CLI rather than a build or language-tool environment.

The runtime consumer that resolves a requirement against declared supply and dispatches a worker
accordingly is out of this decision's scope (execution-toolchain-contract-foundations is a
contract and policy boundary only); that consumer must fail closed when supply cannot satisfy
demand, and may retain only sanitized identifiers, digests and verdicts as evidence -- never a
build log or tool output.

## Alternatives

- **A stringly-typed toolchain name on `WorkerSubstrate` directly**: rejected -- unverifiable
  (no pinned digest), not independently referenceable by a requirement, and reintroduces exactly
  the ambient-trust shape ADR-0043/ADR-0045 replaced structured references to avoid.
- **Folding toolchain qualification into `WorkerCli`**: rejected -- `WorkerCli` qualifies an AI
  CLI's own runtime, a narrower and already-shaped concept; conflating the two would force every
  non-AI build environment through fields meant for CLI adapter concerns.
- **A single toolchain per substrate instead of a finite inventory**: rejected -- a real worker
  image commonly bundles more than one pinned tool (a language runtime and a build tool), and a
  single-value field would force one `ExecutionToolchain` per tool with no shared artifact digest.

## Consequences

- The LinkML metamodel adds `ExecutionToolchain`, `ExecutionToolchainSpec`,
  `ExecutionToolchainArtifact` and `ExecutionToolchainTool`, plus the two typed reference slots.
- `references.rego`'s generic typed-reference machinery (kind-match, kind-id, same-realm) covers
  a malformed reference, an unresolved reference, and cross-Realm supply for free; `execution.rego`
  adds the toolchain-specific artifact-pin, non-empty-inventory and requirement-without-a-provider
  rules ADR-0045's generic checks cannot express.
- No runtime dispatch, image build, PostgreSQL migration, Temporal workflow, connector, provider
  account or SecretBinding changes; a future lot wires an actual toolchain instance and the
  runtime consumer described above.
