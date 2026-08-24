---
search:
  boost: 5.0
---

# Slot: projectionSpecRef


_The ProjectionSpec this step renders. Its `of:` class is the step payload type, so the shape is derived rather than declared twice. Required on COLLECT and CONFIRM once stepKind is set (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:projectionSpecRef](https://jumo.dev/schemas/jumo-v1/projectionSpecRef)
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
| self | jumo:projectionSpecRef |
| native | jumo:projectionSpecRef |




## LinkML Source

<details>
```yaml
name: projectionSpecRef
description: The ProjectionSpec this step renders. Its `of:` class is the step payload
  type, so the shape is derived rather than declared twice. Required on COLLECT and
  CONFIRM once stepKind is set (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: ContractReference
inlined: true

```
</details></div>