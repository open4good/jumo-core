---
search:
  boost: 5.0
---

# Slot: stepKind


_Required from the model-driven renderer onward (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:stepKind](https://jumo.dev/schemas/jumo-v1/stepKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyStepKind](AssistedJourneyStepKind.md) |
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
| self | jumo:stepKind |
| native | jumo:stepKind |




## LinkML Source

<details>
```yaml
name: stepKind
description: Required from the model-driven renderer onward (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: AssistedJourneyStepKind

```
</details></div>