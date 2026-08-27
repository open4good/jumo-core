---
search:
  boost: 5.0
---

# Slot: presentationOverride


_Per-field override of the journey's presentation for this step only. An absent field falls back to AssistedJourneySpec.presentation._



<div data-search-exclude markdown="1">



URI: [jumo:presentationOverride](https://jumo.dev/schemas/jumo-v1/presentationOverride)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [JourneyPresentation](JourneyPresentation.md) |
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
| self | jumo:presentationOverride |
| native | jumo:presentationOverride |




## LinkML Source

<details>
```yaml
name: presentationOverride
description: Per-field override of the journey's presentation for this step only.
  An absent field falls back to AssistedJourneySpec.presentation.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: JourneyPresentation
inlined: true

```
</details></div>