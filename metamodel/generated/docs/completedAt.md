---
search:
  boost: 5.0
---

# Slot: completedAt

<div data-search-exclude markdown="1">



URI: [jumo:completedAt](https://jumo.dev/schemas/jumo-v1/completedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminResult](MachineAdminResult.md), [WorkloadCommandResult](WorkloadCommandResult.md), [CliInvocationResult](CliInvocationResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:completedAt |
| native | jumo:completedAt |




## LinkML Source

<details>
```yaml
name: completedAt
domain_of:
- MachineAdminResult
- WorkloadCommandResult
- CliInvocationResult
range: string

```
</details></div>