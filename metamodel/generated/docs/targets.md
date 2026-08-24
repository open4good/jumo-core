---
search:
  boost: 5.0
---

# Slot: targets

<div data-search-exclude markdown="1">



URI: [jumo:targets](https://jumo.dev/schemas/jumo-v1/targets)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ImprovementTarget](ImprovementTarget.md) |
| Domain Of | [ImprovementLoopSpec](ImprovementLoopSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImprovementLoopSpec](ImprovementLoopSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:targets |
| native | jumo:targets |




## LinkML Source

<details>
```yaml
name: targets
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImprovementLoopSpec
domain_of:
- ImprovementLoopSpec
range: ImprovementTarget
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>