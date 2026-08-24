---
search:
  boost: 5.0
---

# Slot: idempotencyKey


_Required on a SERVICE step whose capability producesExternalEffect (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:idempotencyKey](https://jumo.dev/schemas/jumo-v1/idempotencyKey)
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
| self | jumo:idempotencyKey |
| native | jumo:idempotencyKey |




## LinkML Source

<details>
```yaml
name: idempotencyKey
description: Required on a SERVICE step whose capability producesExternalEffect (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessStep
domain_of:
- ProcessStep
range: string

```
</details></div>