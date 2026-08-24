---
search:
  boost: 5.0
---

# Slot: reads

<div data-search-exclude markdown="1">



URI: [jumo:reads](https://jumo.dev/schemas/jumo-v1/reads)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectionSource](ProjectionSource.md) |
| Domain Of | [Surface](Surface.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:reads |
| native | jumo:reads |




## LinkML Source

<details>
```yaml
name: reads
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: Surface
domain_of:
- Surface
range: ProjectionSource
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>