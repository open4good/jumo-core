---
search:
  boost: 5.0
---

# Slot: incompatibleSeatPairs


_Seats that may never be filled by the same RoleAssignment bearer (e.g. implementer and reviewer). Enforced in Rego, not here._



<div data-search-exclude markdown="1">



URI: [jumo:incompatibleSeatPairs](https://jumo.dev/schemas/jumo-v1/incompatibleSeatPairs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SeatIncompatibility](SeatIncompatibility.md) |
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
| self | jumo:incompatibleSeatPairs |
| native | jumo:incompatibleSeatPairs |




## LinkML Source

<details>
```yaml
name: incompatibleSeatPairs
description: Seats that may never be filled by the same RoleAssignment bearer (e.g.
  implementer and reviewer). Enforced in Rego, not here.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationSpecBody
domain_of:
- OrganizationSpecBody
range: SeatIncompatibility
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>