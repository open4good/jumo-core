---
search:
  boost: 5.0
---

# Slot: descriptionI18nKey


_i18n key resolving this step's user-facing description. When present, takes precedence over the literal description string, which remains the fallback for journeys that have not been translated._



<div data-search-exclude markdown="1">



URI: [jumo:descriptionI18nKey](https://jumo.dev/schemas/jumo-v1/descriptionI18nKey)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyStep](AssistedJourneyStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:descriptionI18nKey |
| native | jumo:descriptionI18nKey |




## LinkML Source

<details>
```yaml
name: descriptionI18nKey
description: i18n key resolving this step's user-facing description. When present,
  takes precedence over the literal description string, which remains the fallback
  for journeys that have not been translated.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: string

```
</details></div>