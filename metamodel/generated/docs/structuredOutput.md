---
search:
  boost: 5.0
---

# Slot: structuredOutput

<div data-search-exclude markdown="1">



URI: [jumo:structuredOutput](https://jumo.dev/schemas/jumo-v1/structuredOutput)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerInteractionRequirement](WorkerInteractionRequirement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ToolUseRequirement](ToolUseRequirement.md) |
| Domain Of | [WorkerInteractionRequirement](WorkerInteractionRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerInteractionRequirement](WorkerInteractionRequirement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:structuredOutput |
| native | jumo:structuredOutput |




## LinkML Source

<details>
```yaml
name: structuredOutput
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerInteractionRequirement
domain_of:
- WorkerInteractionRequirement
range: ToolUseRequirement
required: true

```
</details></div>