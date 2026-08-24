---
title: ADR-0047 — ExecutionMachine contract, multi-instance host agents, and ephemeral execution leases
status: accepted
normative: true
audience: PROJECT_SCOPED
supersedes: [ADR-0020]
decisions: [5]
---

# ADR-0047 — ExecutionMachine contract, multi-instance host agents, and ephemeral execution leases

## Boundary

This ADR supersedes ADR-0020 regarding compute boundary terminology, placement, and lifecycle.

1. **ExecutionMachine as Durable Git Contract**: Compute resources are represented in Git as `ExecutionMachine` contracts. An `ExecutionMachine` belongs to exactly one Realm and declares its origin (`JUMO_MANAGED_LOCAL`, `USER_PROVIDED`, `JUMO_MANAGED_CLOUD_RESERVED`), environment (`LOCAL_DEV`, `REMOTE`), and desired state (`DECLARED`, `ACTIVE`, `DRAINING`, `REVOKED`). An `ExecutionMachine` may be declared with zero connectors or CLI runtimes initially.
2. **ExecutionCell as Ephemeral Sandbox Lease**: `ExecutionCell` is retired as a durable contract kind. The runtime sandbox for a specific WorkOrder is represented as an `ExecutionCellLease` — an ephemeral, short-lived lease bound to a machine, WorkOrder ID, exact git commit SHA, and contract digest.
3. **Multi-Instance and Collision Safety**: A Realm may declare and run multiple concurrent execution machines (e.g. multiple local VMs or remote VPSs). Deterministic, collision-free resource allocation (MAC addresses, IP subnets, disk volumes, libvirt domain names) replaces legacy hardcoded static identifiers.
4. **Outbound mTLS Architecture**: All host agents and guest machine agents initiate outbound connections to the control plane over mTLS. Inbound SSH, public management ports, and uncontrolled host control channels are prohibited.
5. **Operating System Administration via Ansible**: Machine configuration and lifecycle operations use versioned, signed, allowlisted Ansible playbooks with typed LinkML variables. Arbitrary shell commands or unstructured playbooks from the API are rejected.

## Alternatives

- Retaining `ExecutionCell` as both durable host and ephemeral execution sandbox was rejected: it conflated persistent machine identity, certificates, and inventory with transient task execution.
- Allowing cross-Realm shared execution machines was rejected: it would violate Realm isolation and zero-trust credential boundaries.
- Direct host shell access via SSH was rejected: signed, allowlisted Ansible playbooks ensure deterministic state transitions and auditable evidence.

## Consequences

- `ExecutionMachine` is the normative Git contract for machines.
- `ExecutionCellLease` tracks runtime task sandboxes and leases in PostgreSQL and Temporal.
- Libvirt host agent and guest agent communicate with the control plane exclusively via outbound mTLS.
- Ansible playbooks are cataloged, typed, and signed.
