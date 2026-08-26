---
search:
  boost: 5.0
---

# Slot: summaryI18nKey


_Prefix JourneySummaryStep.vue resolves three keys from at its completion step: `${summaryI18nKey}Title`, `${summaryI18nKey}ConfirmLabel` and `${summaryI18nKey}SuccessMessage`. Lets one generic completion component describe what this journey actually produced instead of fixed onboarding text._



<div data-search-exclude markdown="1">



URI: [jumo:summaryI18nKey](https://jumo.dev/schemas/jumo-v1/summaryI18nKey)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-zA-Z0-9]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:summaryI18nKey |
| native | jumo:summaryI18nKey |




## LinkML Source

<details>
```yaml
name: summaryI18nKey
description: 'Prefix JourneySummaryStep.vue resolves three keys from at its completion
  step: `${summaryI18nKey}Title`, `${summaryI18nKey}ConfirmLabel` and `${summaryI18nKey}SuccessMessage`.
  Lets one generic completion component describe what this journey actually produced
  instead of fixed onboarding text.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: string
required: true
pattern: ^[a-z][a-zA-Z0-9]*$

```
</details></div>