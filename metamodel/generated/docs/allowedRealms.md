---
search:
  boost: 5.0
---

# Slot: allowedRealms

<div data-search-exclude markdown="1">



URI: [jumo:allowedRealms](https://jumo.dev/schemas/jumo-v1/allowedRealms)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:allowedRealms |
| native | jumo:allowedRealms |




## LinkML Source

<details>
```yaml
name: allowedRealms
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineAdminPlaybookSpec
domain_of:
- MachineAdminPlaybookSpec
range: Identifier
multivalued: true

```
</details></div>