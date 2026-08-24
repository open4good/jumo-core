---
search:
  boost: 5.0
---

# Slot: bindings


_Open string-keyed map in the source schema, modeled as a list of key/type pairs (see ThemePack for the same pattern)._



<div data-search-exclude markdown="1">



URI: [jumo:bindings](https://jumo.dev/schemas/jumo-v1/bindings)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [KitBindingDeclaration](KitBindingDeclaration.md) |
| Domain Of | [JumoKitSpec](JumoKitSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [JumoKitSpec](JumoKitSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:bindings |
| native | jumo:bindings |




## LinkML Source

<details>
```yaml
name: bindings
description: Open string-keyed map in the source schema, modeled as a list of key/type
  pairs (see ThemePack for the same pattern).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: JumoKitSpec
domain_of:
- JumoKitSpec
range: KitBindingDeclaration
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>