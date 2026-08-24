---
search:
  boost: 5.0
---

# Slot: issuedAt

<div data-search-exclude markdown="1">



URI: [jumo:issuedAt](https://jumo.dev/schemas/jumo-v1/issuedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminCommand](MachineAdminCommand.md), [WorkloadCommand](WorkloadCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:issuedAt |
| native | jumo:issuedAt |




## LinkML Source

<details>
```yaml
name: issuedAt
domain_of:
- MachineAdminCommand
- WorkloadCommand
range: string

```
</details></div>