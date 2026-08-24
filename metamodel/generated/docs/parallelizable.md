---
search:
  boost: 5.0
---

# Slot: parallelizable


_Marks a dependency-ready step as part of a parallelizable work group in the renderer._



<div data-search-exclude markdown="1">



URI: [jumo:parallelizable](https://jumo.dev/schemas/jumo-v1/parallelizable)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `false` |
| Owner | [AssistedJourneyStep](AssistedJourneyStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:parallelizable |
| native | jumo:parallelizable |




## LinkML Source

<details>
```yaml
name: parallelizable
description: Marks a dependency-ready step as part of a parallelizable work group
  in the renderer.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'false'
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: boolean

```
</details></div>