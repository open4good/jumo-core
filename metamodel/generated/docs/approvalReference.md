---
search:
  boost: 5.0
---

# Slot: approvalReference

<div data-search-exclude markdown="1">



URI: [jumo:approvalReference](https://jumo.dev/schemas/jumo-v1/approvalReference)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminCommand](MachineAdminCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineAdminCommand](MachineAdminCommand.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:approvalReference |
| native | jumo:approvalReference |




## LinkML Source

<details>
```yaml
name: approvalReference
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineAdminCommand
domain_of:
- MachineAdminCommand
range: string

```
</details></div>