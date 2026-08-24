---
search:
  boost: 5.0
---

# Slot: semanticStage


_The WorkflowDeclaration-era stage this step corresponds to, where applicable._



<div data-search-exclude markdown="1">



URI: [jumo:semanticStage](https://jumo.dev/schemas/jumo-v1/semanticStage)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessStepSemanticStage](ProcessStepSemanticStage.md) |
| Domain Of | [ProcessStep](ProcessStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessStep](ProcessStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:semanticStage |
| native | jumo:semanticStage |




## LinkML Source

<details>
```yaml
name: semanticStage
description: The WorkflowDeclaration-era stage this step corresponds to, where applicable.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: ProcessStepSemanticStage

```
</details></div>