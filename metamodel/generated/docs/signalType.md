---
search:
  boost: 5.0
---

# Slot: signalType


_Required on USER and MESSAGE signals; resolves to a generated LinkML class._



<div data-search-exclude markdown="1">



URI: [jumo:signalType](https://jumo.dev/schemas/jumo-v1/signalType)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:signalType |
| native | jumo:signalType |




## LinkML Source

<details>
```yaml
name: signalType
description: Required on USER and MESSAGE signals; resolves to a generated LinkML
  class.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: string

```
</details></div>