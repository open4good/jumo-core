---
search:
  boost: 5.0
---

# Slot: playbookPath

<div data-search-exclude markdown="1">



URI: [jumo:playbookPath](https://jumo.dev/schemas/jumo-v1/playbookPath)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:playbookPath |
| native | jumo:playbookPath |




## LinkML Source

<details>
```yaml
name: playbookPath
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineAdminPlaybookSpec
domain_of:
- MachineAdminPlaybookSpec
range: string
required: true

```
</details></div>