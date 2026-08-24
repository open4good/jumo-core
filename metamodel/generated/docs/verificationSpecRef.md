---
search:
  boost: 5.0
---

# Slot: verificationSpecRef


_Generic real observation required before this step can advance._



<div data-search-exclude markdown="1">



URI: [jumo:verificationSpecRef](https://jumo.dev/schemas/jumo-v1/verificationSpecRef)
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
| self | jumo:verificationSpecRef |
| native | jumo:verificationSpecRef |




## LinkML Source

<details>
```yaml
name: verificationSpecRef
description: Generic real observation required before this step can advance.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: ContractReference
inlined: true

```
</details></div>