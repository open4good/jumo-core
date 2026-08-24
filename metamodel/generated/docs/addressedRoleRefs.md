---
search:
  boost: 5.0
---

# Slot: addressedRoleRefs


_RoleDefinitions this rule matches as the addressee._



<div data-search-exclude markdown="1">



URI: [jumo:addressedRoleRefs](https://jumo.dev/schemas/jumo-v1/addressedRoleRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DispositionMatch](DispositionMatch.md) | minProperties:1 in the source (at least one match field present) moves to Reg... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [DispositionMatch](DispositionMatch.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DispositionMatch](DispositionMatch.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:addressedRoleRefs |
| native | jumo:addressedRoleRefs |




## LinkML Source

<details>
```yaml
name: addressedRoleRefs
description: RoleDefinitions this rule matches as the addressee.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DispositionMatch
domain_of:
- DispositionMatch
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>