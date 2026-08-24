---
search:
  boost: 5.0
---

# Slot: leaseId

<div data-search-exclude markdown="1">



URI: [jumo:leaseId](https://jumo.dev/schemas/jumo-v1/leaseId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkloadCommand](WorkloadCommand.md), [ExecutionCellLease](ExecutionCellLease.md), [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:leaseId |
| native | jumo:leaseId |




## LinkML Source

<details>
```yaml
name: leaseId
domain_of:
- WorkloadCommand
- ExecutionCellLease
- CliInvocationRequest
range: string

```
</details></div>