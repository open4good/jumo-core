---
search:
  boost: 5.0
---

# Slot: seatId


_A named seat in this organization, e.g. "chief-of-staff", "implementer", "reviewer", "owner"._



<div data-search-exclude markdown="1">



URI: [jumo:seatId](https://jumo.dev/schemas/jumo-v1/seatId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationRoleBinding](OrganizationRoleBinding.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [OrganizationRoleBinding](OrganizationRoleBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationRoleBinding](OrganizationRoleBinding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:seatId |
| native | jumo:seatId |




## LinkML Source

<details>
```yaml
name: seatId
description: A named seat in this organization, e.g. "chief-of-staff", "implementer",
  "reviewer", "owner".
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationRoleBinding
domain_of:
- OrganizationRoleBinding
range: Identifier
required: true

```
</details></div>