---
search:
  boost: 5.0
---

# Slot: variables

<div data-search-exclude markdown="1">



URI: [jumo:variables](https://jumo.dev/schemas/jumo-v1/variables)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |
| [MachineAdminRequest](MachineAdminRequest.md) | Web administration request to dispatch an allowlisted Ansible playbook to a m... |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PromptTemplateSpec](PromptTemplateSpec.md), [MachineAdminRequest](MachineAdminRequest.md), [MachineAdminCommand](MachineAdminCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:variables |
| native | jumo:variables |




## LinkML Source

<details>
```yaml
name: variables
domain_of:
- PromptTemplateSpec
- MachineAdminRequest
- MachineAdminCommand
range: string

```
</details></div>