---
search:
  boost: 5.0
---

# Slot: commandId

<div data-search-exclude markdown="1">



URI: [jumo:commandId](https://jumo.dev/schemas/jumo-v1/commandId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminCommand](MachineAdminCommand.md), [MachineAdminResult](MachineAdminResult.md), [WorkloadCommand](WorkloadCommand.md), [WorkloadCommandResult](WorkloadCommandResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:commandId |
| native | jumo:commandId |




## LinkML Source

<details>
```yaml
name: commandId
domain_of:
- MachineAdminCommand
- MachineAdminResult
- WorkloadCommand
- WorkloadCommandResult
range: string

```
</details></div>