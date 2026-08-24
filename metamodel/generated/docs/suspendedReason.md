---
search:
  boost: 5.0
---

# Slot: suspendedReason


_Set when state is PROPOSED after having been ACCEPTED or IN_PROGRESS, to record why work paused rather than why it was declined. Distinct from declineReason, which is permanent._



<div data-search-exclude markdown="1">



URI: [jumo:suspendedReason](https://jumo.dev/schemas/jumo-v1/suspendedReason)
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


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,160}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:suspendedReason |
| native | jumo:suspendedReason |




## LinkML Source

<details>
```yaml
name: suspendedReason
description: Set when state is PROPOSED after having been ACCEPTED or IN_PROGRESS,
  to record why work paused rather than why it was declined. Distinct from declineReason,
  which is permanent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: string
pattern: ^.{1,160}$

```
</details></div>