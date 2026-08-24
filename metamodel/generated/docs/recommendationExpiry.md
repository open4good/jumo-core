---
search:
  boost: 5.0
---

# Slot: recommendationExpiry

<div data-search-exclude markdown="1">



URI: [jumo:recommendationExpiry](https://jumo.dev/schemas/jumo-v1/recommendationExpiry)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementCeilings](ImprovementCeilings.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [ImprovementCeilings](ImprovementCeilings.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImprovementCeilings](ImprovementCeilings.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:recommendationExpiry |
| native | jumo:recommendationExpiry |




## LinkML Source

<details>
```yaml
name: recommendationExpiry
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImprovementCeilings
domain_of:
- ImprovementCeilings
range: Duration
required: true

```
</details></div>