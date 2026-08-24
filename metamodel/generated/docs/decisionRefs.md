---
search:
  boost: 5.0
---

# Slot: decisionRefs


_Architecture decisions this work implements or expects._



<div data-search-exclude markdown="1">



URI: [jumo:decisionRefs](https://jumo.dev/schemas/jumo-v1/decisionRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DecisionReference](DecisionReference.md) |
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
| self | jumo:decisionRefs |
| native | jumo:decisionRefs |




## LinkML Source

<details>
```yaml
name: decisionRefs
description: Architecture decisions this work implements or expects.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: DecisionReference
multivalued: true

```
</details></div>