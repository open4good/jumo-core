---
search:
  boost: 5.0
---

# Slot: humanSeat


_True for the human-owner seat, which is never filled by an AgentDefinition bearer._



<div data-search-exclude markdown="1">



URI: [jumo:humanSeat](https://jumo.dev/schemas/jumo-v1/humanSeat)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationRoleBinding](OrganizationRoleBinding.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [OrganizationRoleBinding](OrganizationRoleBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `false` |
| Owner | [OrganizationRoleBinding](OrganizationRoleBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:humanSeat |
| native | jumo:humanSeat |




## LinkML Source

<details>
```yaml
name: humanSeat
description: True for the human-owner seat, which is never filled by an AgentDefinition
  bearer.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'false'
owner: OrganizationRoleBinding
domain_of:
- OrganizationRoleBinding
range: boolean

```
</details></div>