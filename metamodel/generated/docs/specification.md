---
search:
  boost: 5.0
---

# Slot: specification


_Long-form design lots too large for purpose/condition/acceptanceCriteria -- Markdown body, no language restriction (WorkOrder specification prose is exempt from the English-only rule, AGENTS.md)._



<div data-search-exclude markdown="1">



URI: [jumo:specification](https://jumo.dev/schemas/jumo-v1/specification)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkOrderSpecification](WorkOrderSpecification.md) |
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
| self | jumo:specification |
| native | jumo:specification |




## LinkML Source

<details>
```yaml
name: specification
description: Long-form design lots too large for purpose/condition/acceptanceCriteria
  -- Markdown body, no language restriction (WorkOrder specification prose is exempt
  from the English-only rule, AGENTS.md).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: WorkOrderSpecification
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>