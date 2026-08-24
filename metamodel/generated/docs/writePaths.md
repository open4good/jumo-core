---
search:
  boost: 5.0
---

# Slot: writePaths

<div data-search-exclude markdown="1">



URI: [jumo:writePaths](https://jumo.dev/schemas/jumo-v1/writePaths)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SurfaceWritePath](SurfaceWritePath.md) |
| Domain Of | [Surface](Surface.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Surface](Surface.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:writePaths |
| native | jumo:writePaths |




## LinkML Source

<details>
```yaml
name: writePaths
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: Surface
domain_of:
- Surface
range: SurfaceWritePath
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>