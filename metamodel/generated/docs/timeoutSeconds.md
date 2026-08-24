---
search:
  boost: 5.0
---

# Slot: timeoutSeconds

<div data-search-exclude markdown="1">



URI: [jumo:timeoutSeconds](https://jumo.dev/schemas/jumo-v1/timeoutSeconds)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminCommand](MachineAdminCommand.md), [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:timeoutSeconds |
| native | jumo:timeoutSeconds |




## LinkML Source

<details>
```yaml
name: timeoutSeconds
domain_of:
- MachineAdminCommand
- CliInvocationRequest
range: string

```
</details></div>