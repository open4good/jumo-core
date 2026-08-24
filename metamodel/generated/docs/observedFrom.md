---
search:
  boost: 5.0
---

# Slot: observedFrom

<div data-search-exclude markdown="1">



URI: [jumo:observedFrom](https://jumo.dev/schemas/jumo-v1/observedFrom)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ImprovementObservation](ImprovementObservation.md) |
| Domain Of | [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:observedFrom |
| native | jumo:observedFrom |




## LinkML Source

<details>
```yaml
name: observedFrom
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImprovementRecommendationSpec
domain_of:
- ImprovementRecommendationSpec
range: ImprovementObservation
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>