---
search:
  boost: 5.0
---

# Slot: subAssistedJourneyRef


_The AssistedJourney this step delegates to when stepKind is SUB_JOURNEY._



<div data-search-exclude markdown="1">



URI: [jumo:subAssistedJourneyRef](https://jumo.dev/schemas/jumo-v1/subAssistedJourneyRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
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
| self | jumo:subAssistedJourneyRef |
| native | jumo:subAssistedJourneyRef |




## LinkML Source

<details>
```yaml
name: subAssistedJourneyRef
description: The AssistedJourney this step delegates to when stepKind is SUB_JOURNEY.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: ContractReference
inlined: true

```
</details></div>