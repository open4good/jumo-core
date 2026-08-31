---
title: ADR-0050 — MCP connector factory, target-machine discovery, TypeScript runtime, and dual-consent appraisal
status: accepted
normative: true
audience: PROJECT_SCOPED
decisions: [8]
---

# ADR-0050 — MCP connector factory, target-machine discovery, TypeScript runtime, and owner effect approval

> The package/factory, generated-adapter, bundle and remote-service branches in this ADR are superseded by
> ADR-0063. Its catalogue-without-authority, Realm isolation, independent-appraisal and per-effect owner-approval
> boundaries remain in force.

## Boundary

The internal MCP registry is a shared, platform-scoped catalogue of sourced static signals, not an installer, executor, capability grant, or substitute for Realm approval.

1. **Connector Package Manifest**: every generated connector lives under `.jumo/connector-packages/<connector-id>/` containing `package.yml`, `contracts/`, `src/`, `tests/`, `fixtures/`, `Dockerfile`, `package.json`, `package-lock.json`, `tsconfig.json`, and `README.generated.md`. Every YAML document in the package is a valid LinkML contract.
2. **Target-Machine Protocol Discovery**: MCP discovery (`initialize`, capabilities, `tools/list`, schema extraction) executes on the target `ExecutionMachine` inside the Realm, negotiating stable MCP specification version `2025-11-25`. External schema annotations are untrusted candidates until validated.
3. **LinkML Conversion & TypeScript Adapter**: MCP tool schemas convert into candidate LinkML classes. Tools lacking an `outputSchema` or requiring transformation receive a generated strict TypeScript adapter running on Node.js LTS with the official MCP SDK in an OCI container.
4. **Independent Appraisal & Governance**: the proposer (author/initiator) and the appraiser must be distinct principals. The Realm owner activates the connector only after successful appraisal, CI verification, and evidence recording. Appraisal is admission control, not per-effect consent. Each irreversible external effect requires one fresh, server-verified step-up by the addressed Realm owner and one owner approval bound to the exact canonical payload digest and policy revision.
5. **LOCAL_DEV Single-Operator Exception**: in Realms configured with `environment: LOCAL_DEV`, a single human operator may perform both the proposal and appraisal roles. All appraisals, packages, and evidence generated under this exception are explicitly marked `promotable: false` and `environment: LOCAL_DEV`; policy forbids promoting, deploying, or activating any such non-promotable artifact in remote or production Realms.
6. **Registry and provenance boundary**: `McpRegistrySource` is a platform Git contract with a bounded adapter, allowlisted base URLs, lifecycle, cadence, WorkOrder/operator attribution, and optional secret and terms-approval references. Only the Official Registry source is enabled by default; GitHub is enrichment-only and remains disabled until its dedicated worker, credential binding, and terms evidence are approved; other registry types are disabled. Raw payloads, observations, canonical catalog projections, field selections, assessments, reconciliation decisions, sync state, and replay generations are PostgreSQL recognized state; Temporal records sync and factory execution history; no raw payload is exposed through a V1 API. A catalog entry supplies provenance pins and installability signals only, and becomes usable in a Realm only through the existing 10-step journey, discovery on the chosen machine, independent appraisal, an approved Git contract on the exact SHA, and an active lease-scoped grant. `ConnectorPackage` describes sources, contracts, tests, and build recipe; `McpBundle` is the immutable, signed, attested OCI branch referencing its package; `RemoteMcpService` is the Streamable HTTP branch and has no bundle. A `ConnectorDefinition` references exactly one of those executable branches. Reconciliation may auto-merge only on deterministic strong identities — names, descriptions, repositories, and fuzzy scores never auto-merge; decisions are append-only evidence and an owner step-up is required for a high-confidence merge or split.
7. **Realm lease gateway**: a durable pull supervisor belongs to one `ExecutionMachine` and holds no invocation authority or persistent connector secret. Each MCP policy-enforcement point and its upstream run inside an `ExecutionCellLease` owned by that machine's Realm; workers reach only the lease-local loopback gateway, and direct upstream access is denied by the lease network. `OCI_STDIO` children and `STREAMABLE_HTTP` services are admitted; host stdio binaries, cross-Realm gateways, shared credentialed data planes, and `SHARED_REMOTE` are not. The gateway exposes only contract-authored names, descriptions and schemas, suppresses upstream server instructions/prompts/resources, validates inputs and outputs, and compares a versioned canonical `tools/list` digest at session creation and during long sessions — drift creates an immediate PostgreSQL quarantine and never edits Git automatically.
8. **Global package, Realm qualification**: the platform catalogue records only sourced, screened and package-certified facts. Discovery, appraisal, admission, activation and suspension are Realm-scoped recognized state and never mutate a global projection generation. Every executable package and technical certification is published in the Platform corpus before a Realm proposes its own `McpBundle`, `ConnectorDefinition`, appraisal, secret binding and activation decision — technical reuse never transfers Realm consent or secret authority.
9. **Two-phase external effects**: a first call to an effectful operation persists a proposal over the canonical argument digest and returns `APPROVAL_REQUIRED` without contacting the upstream. After the required human consent, a one-use approval handle is delivered to the lease gateway outside model-visible arguments; a repeated call with the identical digest may consume that handle and one invocation grant. A crash after upstream dispatch is `UNKNOWN`: retry is refused until the operation's declared reconciliation has established the outcome. Read-only operations use the same per-call authorization boundary without the approval phase.

## Alternatives

- Allowing dynamic, unreviewed MCP tool invocation without LinkML schema compilation was rejected: it violated static typing, policy enforcement, and auditability.
- Allowing self-appraisal in production was rejected: dual-control governance is fundamental to Jumo's authority model.

## Consequences

- Connector creation follows a 10-step persistent, resumable journey (`create-connector`).
- Package publication, Realm declaration and Realm activation are ordered changesets. Partial completion leaves no invocable authority.
- `ConnectorPackage`, `McpServerDescriptor`, `ConnectorTestPlan`, and `ConnectorActivationDecision` govern the lifecycle.
- OPA policies strictly enforce the owner effect approval boundary and block promotion of LOCAL_DEV artifacts.
