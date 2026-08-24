---
search:
  boost: 5.0
---

# Slot: cases

<div data-search-exclude markdown="1">



URI: [jumo:cases](https://jumo.dev/schemas/jumo-v1/cases)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [GoldenTaskSetSpec](GoldenTaskSetSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [GoldenTaskCase](GoldenTaskCase.md) |
| Domain Of | [GoldenTaskSetSpec](GoldenTaskSetSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 10 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [GoldenTaskSetSpec](GoldenTaskSetSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:cases |
| native | jumo:cases |




## LinkML Source

<details>
```yaml
name: cases
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: GoldenTaskSetSpec
domain_of:
- GoldenTaskSetSpec
range: GoldenTaskCase
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 10

```
</details></div>