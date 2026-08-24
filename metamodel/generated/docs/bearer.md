---
search:
  boost: 5.0
---

# Slot: bearer

<div data-search-exclude markdown="1">



URI: [jumo:bearer](https://jumo.dev/schemas/jumo-v1/bearer)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleAssignmentSpec](RoleAssignmentSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RoleBearer](RoleBearer.md) |
| Domain Of | [RoleAssignmentSpec](RoleAssignmentSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoleAssignmentSpec](RoleAssignmentSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:bearer |
| native | jumo:bearer |




## LinkML Source

<details>
```yaml
name: bearer
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoleAssignmentSpec
domain_of:
- RoleAssignmentSpec
range: RoleBearer
required: true
inlined: true

```
</details></div>