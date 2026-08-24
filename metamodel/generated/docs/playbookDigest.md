---
search:
  boost: 5.0
---

# Slot: playbookDigest

<div data-search-exclude markdown="1">



URI: [jumo:playbookDigest](https://jumo.dev/schemas/jumo-v1/playbookDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md), [MachineAdminCommand](MachineAdminCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:playbookDigest |
| native | jumo:playbookDigest |




## LinkML Source

<details>
```yaml
name: playbookDigest
domain_of:
- MachineAdminPlaybookSpec
- MachineAdminCommand
range: string

```
</details></div>