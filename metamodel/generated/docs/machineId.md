---
search:
  boost: 5.0
---

# Slot: machineId

<div data-search-exclude markdown="1">



URI: [jumo:machineId](https://jumo.dev/schemas/jumo-v1/machineId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineHealthObservation](MachineHealthObservation.md) | Observed real-time health and load status of an execution machine |  no  |
| [MachineEnrollmentRequest](MachineEnrollmentRequest.md) | BYOVM one-shot machine enrollment request carrying CSR and system inventory |  no  |
| [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) | Short-lived enrollment challenge issued by the control plane |  no  |
| [MachineEnrollmentResult](MachineEnrollmentResult.md) | Result of a machine enrollment challenge containing issued mTLS certificates |  no  |
| [MachineAdminRequest](MachineAdminRequest.md) | Web administration request to dispatch an allowlisted Ansible playbook to a m... |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineHealthObservation](MachineHealthObservation.md), [MachineEnrollmentRequest](MachineEnrollmentRequest.md), [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md), [MachineEnrollmentResult](MachineEnrollmentResult.md), [MachineAdminRequest](MachineAdminRequest.md), [MachineAdminCommand](MachineAdminCommand.md), [MachineAdminResult](MachineAdminResult.md), [WorkloadCommand](WorkloadCommand.md), [WorkloadCommandResult](WorkloadCommandResult.md), [MachineRuntimeInstallation](MachineRuntimeInstallation.md), [ExecutionCellLease](ExecutionCellLease.md), [DelegatedSecretGrant](DelegatedSecretGrant.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:machineId |
| native | jumo:machineId |




## LinkML Source

<details>
```yaml
name: machineId
domain_of:
- MachineHealthObservation
- MachineEnrollmentRequest
- MachineEnrollmentChallenge
- MachineEnrollmentResult
- MachineAdminRequest
- MachineAdminCommand
- MachineAdminResult
- WorkloadCommand
- WorkloadCommandResult
- MachineRuntimeInstallation
- ExecutionCellLease
- DelegatedSecretGrant
range: string

```
</details></div>