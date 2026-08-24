---
search:
  boost: 5.0
---

# Slot: roleRefs


_References RoleDefinition entries this organization uses, each bound to a named seat._



<div data-search-exclude markdown="1">



URI: [jumo:roleRefs](https://jumo.dev/schemas/jumo-v1/roleRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [OrganizationRoleBinding](OrganizationRoleBinding.md) |
| Domain Of | [OrganizationSpecBody](OrganizationSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:roleRefs |
| native | jumo:roleRefs |




## LinkML Source

<details>
```yaml
name: roleRefs
description: References RoleDefinition entries this organization uses, each bound
  to a named seat.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OrganizationSpecBody
domain_of:
- OrganizationSpecBody
range: OrganizationRoleBinding
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>