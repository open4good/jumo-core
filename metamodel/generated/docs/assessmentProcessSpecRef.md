---
search:
  boost: 5.0
---

# Slot: assessmentProcessSpecRef


_Optional explicit ProcessSpec (execution.yaml)._



<div data-search-exclude markdown="1">



URI: [jumo:assessmentProcessSpecRef](https://jumo.dev/schemas/jumo-v1/assessmentProcessSpecRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ImprovementLoopSpec](ImprovementLoopSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ImprovementLoopSpec](ImprovementLoopSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:assessmentProcessSpecRef |
| native | jumo:assessmentProcessSpecRef |




## LinkML Source

<details>
```yaml
name: assessmentProcessSpecRef
description: Optional explicit ProcessSpec (execution.yaml).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ImprovementLoopSpec
domain_of:
- ImprovementLoopSpec
range: ContractReference
inlined: true

```
</details></div>