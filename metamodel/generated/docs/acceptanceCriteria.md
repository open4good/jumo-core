---
search:
  boost: 5.0
---

# Slot: acceptanceCriteria


_What the result is checked against. Required from ACCEPTED onward (Rego, same as the source schema's conditional)._



<div data-search-exclude markdown="1">



URI: [jumo:acceptanceCriteria](https://jumo.dev/schemas/jumo-v1/acceptanceCriteria)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AcceptanceCriterion](AcceptanceCriterion.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:acceptanceCriteria |
| native | jumo:acceptanceCriteria |




## LinkML Source

<details>
```yaml
name: acceptanceCriteria
description: What the result is checked against. Required from ACCEPTED onward (Rego,
  same as the source schema's conditional).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: AcceptanceCriterion
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>