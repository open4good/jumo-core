---
search:
  boost: 5.0
---

# Slot: terminalState


_Required on END and forbidden elsewhere._



<div data-search-exclude markdown="1">



URI: [jumo:terminalState](https://jumo.dev/schemas/jumo-v1/terminalState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessTerminalState](ProcessTerminalState.md) |
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
| self | jumo:terminalState |
| native | jumo:terminalState |




## LinkML Source

<details>
```yaml
name: terminalState
description: Required on END and forbidden elsewhere.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: ProcessTerminalState

```
</details></div>