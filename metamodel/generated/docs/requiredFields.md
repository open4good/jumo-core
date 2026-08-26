---
search:
  boost: 5.0
---

# Slot: requiredFields


_One entry per field the step collects or confirms, each carrying the i18n key journey-generic-step and the completed-step recap render for it. A bare field-name string list let two journeys reusing the same field name for a different meaning (e.g. purpose) collide on one hardcoded label; this does not._



<div data-search-exclude markdown="1">



URI: [jumo:requiredFields](https://jumo.dev/schemas/jumo-v1/requiredFields)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyRequiredField](AssistedJourneyRequiredField.md) |
| Domain Of | [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:requiredFields |
| native | jumo:requiredFields |




## LinkML Source

<details>
```yaml
name: requiredFields
description: One entry per field the step collects or confirms, each carrying the
  i18n key journey-generic-step and the completed-step recap render for it. A bare
  field-name string list let two journeys reusing the same field name for a different
  meaning (e.g. purpose) collide on one hardcoded label; this does not.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: AssistedJourneyRequiredField
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>