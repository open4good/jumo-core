---
search:
  boost: 5.0
---

# Slot: independentSeatGroups


_Seats whose bearers must sit in different independence groups (e.g. reviewer needs a distinct provider group from implementer). Enforced in Rego._



<div data-search-exclude markdown="1">



URI: [jumo:independentSeatGroups](https://jumo.dev/schemas/jumo-v1/independentSeatGroups)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SeatIndependenceGroup](SeatIndependenceGroup.md) |
| Domain Of | [OrganizationSpecBody](OrganizationSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OrganizationSpecBody](OrganizationSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:independentSeatGroups |
| native | jumo:independentSeatGroups |




## LinkML Source

<details>
```yaml
name: independentSeatGroups
description: Seats whose bearers must sit in different independence groups (e.g. reviewer
  needs a distinct provider group from implementer). Enforced in Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationSpecBody
domain_of:
- OrganizationSpecBody
range: SeatIndependenceGroup
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>