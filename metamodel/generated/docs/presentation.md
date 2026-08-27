---
search:
  boost: 5.0
---

# Slot: presentation


_Default presentation for this journey and every step, overridable per step by AssistedJourneyStep.presentationOverride._



<div data-search-exclude markdown="1">



URI: [jumo:presentation](https://jumo.dev/schemas/jumo-v1/presentation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [JourneyPresentation](JourneyPresentation.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:presentation |
| native | jumo:presentation |




## LinkML Source

<details>
```yaml
name: presentation
description: Default presentation for this journey and every step, overridable per
  step by AssistedJourneyStep.presentationOverride.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: JourneyPresentation
inlined: true

```
</details></div>