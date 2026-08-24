---
search:
  boost: 5.0
---

# Slot: playbookRef

<div data-search-exclude markdown="1">



URI: [jumo:playbookRef](https://jumo.dev/schemas/jumo-v1/playbookRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminRequest](MachineAdminRequest.md) | Web administration request to dispatch an allowlisted Ansible playbook to a m... |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminRequest](MachineAdminRequest.md), [MachineAdminCommand](MachineAdminCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:playbookRef |
| native | jumo:playbookRef |




## LinkML Source

<details>
```yaml
name: playbookRef
domain_of:
- MachineAdminRequest
- MachineAdminCommand
range: string

```
</details></div>