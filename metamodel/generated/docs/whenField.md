---
search:
  boost: 5.0
---

# Slot: whenField


_The collected or derived value the presence of `field` depends on._



<div data-search-exclude markdown="1">



URI: [jumo:whenField](https://jumo.dev/schemas/jumo-v1/whenField)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) | One field of the emitted document and the collected value that decides whethe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:whenField |
| native | jumo:whenField |




## LinkML Source

<details>
```yaml
name: whenField
description: The collected or derived value the presence of `field` depends on.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyFieldCondition
domain_of:
- AssistedJourneyFieldCondition
range: string
required: true

```
</details></div>