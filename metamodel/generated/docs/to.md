---
search:
  boost: 5.0
---

# Slot: to


_A ProcessStep id in this same ProcessSpec._



<div data-search-exclude markdown="1">



URI: [jumo:to](https://jumo.dev/schemas/jumo-v1/to)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessFlow](ProcessFlow.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [ProcessFlow](ProcessFlow.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:to |
| native | jumo:to |




## LinkML Source

<details>
```yaml
name: to
description: A ProcessStep id in this same ProcessSpec.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessFlow
domain_of:
- ProcessFlow
range: Identifier
required: true

```
</details></div>