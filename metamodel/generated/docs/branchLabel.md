---
search:
  boost: 5.0
---

# Slot: branchLabel


_Required when `from` names a GATEWAY step with more than one outgoing flow (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:branchLabel](https://jumo.dev/schemas/jumo-v1/branchLabel)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessFlow](ProcessFlow.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProcessFlow](ProcessFlow.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessFlow](ProcessFlow.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:branchLabel |
| native | jumo:branchLabel |




## LinkML Source

<details>
```yaml
name: branchLabel
description: Required when `from` names a GATEWAY step with more than one outgoing
  flow (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessFlow
domain_of:
- ProcessFlow
range: string

```
</details></div>