---
search:
  boost: 5.0
---

# Slot: rendered

<div data-search-exclude markdown="1">



URI: [jumo:rendered](https://jumo.dev/schemas/jumo-v1/rendered)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitLockSpec](KitLockSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RenderedKitFile](RenderedKitFile.md) |
| Domain Of | [KitLockSpec](KitLockSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [KitLockSpec](KitLockSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:rendered |
| native | jumo:rendered |




## LinkML Source

<details>
```yaml
name: rendered
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: KitLockSpec
domain_of:
- KitLockSpec
range: RenderedKitFile
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>