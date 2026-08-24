---
search:
  boost: 5.0
---

# Slot: pathScope


_Glob patterns the work may touch._



<div data-search-exclude markdown="1">



URI: [jumo:pathScope](https://jumo.dev/schemas/jumo-v1/pathScope)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkOrderSpec](WorkOrderSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:pathScope |
| native | jumo:pathScope |




## LinkML Source

<details>
```yaml
name: pathScope
description: Glob patterns the work may touch.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: string
multivalued: true
pattern: ^.{1,}$

```
</details></div>