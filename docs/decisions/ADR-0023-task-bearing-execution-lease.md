---
title: ADR-0023 — Task-bearing execution lease for coding agents
status: accepted
normative: true
audience: PROJECT_SCOPED
---

# ADR-0023 — Task-bearing execution lease for coding agents

## Decision

Autonomous coding clients (such as OpenAI Codex CLI, Claude Code CLI, or custom agent runtimes)
operate inside isolated Execution Cells. To ensure determinism and compliance with canonical state
boundaries, an Execution Cell provisioned for coding work must carry a task-bearing execution lease.

The execution lease explicitly binds:
1. A reference to the accepted WorkOrder (`workOrderRef`) and its base contract revision SHA.
2. An isolated workspace mount and ephemeral git checkout of the target repository.
3. Bounded capability grants and credential sessions scoped strictly to the task duration.
4. A dedicated target return branch (`jumo/work/<work-order-id>-<short-id>`).

The coding agent executes within the cell, applies local changes, runs verification checks, and
returns a verified commit or patch proposal to the control plane. Direct pushes to protected branches
remain strictly prohibited.

## Alternatives

- Ambient VM execution without work order leases was rejected: unleased execution permits untracked
  changes, breaks provenance tracking, and prevents deterministic post-execution auditing.
- Giving coding agents direct forge administrative credentials was rejected: agents must emit
  proposals via the control-plane forge applier rather than exerting direct forge write authority.

## Consequences

- `ExecutionCellProvisioningCommand` and `CellPairingService` support task-bearing lease metadata.
- `ExecutionCell` and `PersonalSpace` mounting rules enforce realm-scoped workspace isolation.
- Completed task outcomes are returned as structured `ChangeProposal` records.
