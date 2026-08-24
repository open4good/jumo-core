---
search:
  boost: 5.0
---

# Slot: isMetaRole


_When true, this role acts on behalf of a Jumo Control Plane or Child Realm._



<div data-search-exclude markdown="1">



URI: [jumo:isMetaRole](https://jumo.dev/schemas/jumo-v1/isMetaRole)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleDefinitionSpec](RoleDefinitionSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [RoleDefinitionSpec](RoleDefinitionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `false` |
| Owner | [RoleDefinitionSpec](RoleDefinitionSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:isMetaRole |
| native | jumo:isMetaRole |




## LinkML Source

<details>
```yaml
name: isMetaRole
description: When true, this role acts on behalf of a Jumo Control Plane or Child
  Realm.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'false'
owner: RoleDefinitionSpec
domain_of:
- RoleDefinitionSpec
range: boolean

```
</details></div>