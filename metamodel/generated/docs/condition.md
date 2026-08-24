---
search:
  boost: 5.0
---

# Slot: condition


_The condition under which this commitment is discharged, in addition to (not instead of) acceptanceCriteria -- acceptanceCriteria is what is checked; condition is the commitment-theoretic statement of when the debt is considered settled._



<div data-search-exclude markdown="1">



URI: [jumo:condition](https://jumo.dev/schemas/jumo-v1/condition)
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
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkOrderSpec](WorkOrderSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:condition |
| native | jumo:condition |




## LinkML Source

<details>
```yaml
name: condition
description: The condition under which this commitment is discharged, in addition
  to (not instead of) acceptanceCriteria -- acceptanceCriteria is what is checked;
  condition is the commitment-theoretic statement of when the debt is considered settled.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: string

```
</details></div>