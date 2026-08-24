---
search:
  boost: 5.0
---

# Slot: maximumOpenRecommendations

<div data-search-exclude markdown="1">



URI: [jumo:maximumOpenRecommendations](https://jumo.dev/schemas/jumo-v1/maximumOpenRecommendations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementCeilings](ImprovementCeilings.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ImprovementCeilings](ImprovementCeilings.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImprovementCeilings](ImprovementCeilings.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |
| Maximum Value | 50 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumOpenRecommendations |
| native | jumo:maximumOpenRecommendations |




## LinkML Source

<details>
```yaml
name: maximumOpenRecommendations
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImprovementCeilings
domain_of:
- ImprovementCeilings
range: integer
required: true
minimum_value: 1
maximum_value: 50

```
</details></div>