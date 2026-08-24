---
search:
  boost: 5.0
---

# Slot: surfaces

<div data-search-exclude markdown="1">



URI: [jumo:surfaces](https://jumo.dev/schemas/jumo-v1/surfaces)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Surface](Surface.md) |
| Domain Of | [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:surfaces |
| native | jumo:surfaces |




## LinkML Source

<details>
```yaml
name: surfaces
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: InterfaceSurfaceSpec
domain_of:
- InterfaceSurfaceSpec
range: Surface
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>