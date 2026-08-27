---
search:
  boost: 5.0
---

# Slot: workOrderId

<div data-search-exclude markdown="1">



URI: [jumo:workOrderId](https://jumo.dev/schemas/jumo-v1/workOrderId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminRequest](MachineAdminRequest.md) | Web administration request to dispatch an allowlisted Ansible playbook to a m... |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |  no  |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminRequest](MachineAdminRequest.md), [MachineAdminCommand](MachineAdminCommand.md), [WorkloadCommand](WorkloadCommand.md), [ExecutionCellLease](ExecutionCellLease.md), [DelegatedSecretGrant](DelegatedSecretGrant.md), [CliInvocationRequest](CliInvocationRequest.md), [CliInvocationEvent](CliInvocationEvent.md), [CliInvocationResult](CliInvocationResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:workOrderId |
| native | jumo:workOrderId |




## LinkML Source

<details>
```yaml
name: workOrderId
domain_of:
- MachineAdminRequest
- MachineAdminCommand
- WorkloadCommand
- ExecutionCellLease
- DelegatedSecretGrant
- CliInvocationRequest
- CliInvocationEvent
- CliInvocationResult
range: string

```
</details></div>