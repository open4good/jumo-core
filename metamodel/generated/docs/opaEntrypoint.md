---
search:
  boost: 5.0
---

# Slot: opaEntrypoint


_Required on a GATEWAY step (Rego): the Rego rule the ProcessSpec compiler wires as the decision selecting this gateway's outgoing branch._



<div data-search-exclude markdown="1">



URI: [jumo:opaEntrypoint](https://jumo.dev/schemas/jumo-v1/opaEntrypoint)
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


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9_.]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:opaEntrypoint |
| native | jumo:opaEntrypoint |




## LinkML Source

<details>
```yaml
name: opaEntrypoint
description: 'Required on a GATEWAY step (Rego): the Rego rule the ProcessSpec compiler
  wires as the decision selecting this gateway''s outgoing branch.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: string
pattern: ^[a-z][a-z0-9_.]*$

```
</details></div>