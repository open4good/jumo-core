---
search:
  boost: 5.0
---

# Slot: roadmapRef


_Groups durable work contracts into a generated roadmap projection._



<div data-search-exclude markdown="1">



URI: [jumo:roadmapRef](https://jumo.dev/schemas/jumo-v1/roadmapRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
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
| self | jumo:roadmapRef |
| native | jumo:roadmapRef |




## LinkML Source

<details>
```yaml
name: roadmapRef
description: Groups durable work contracts into a generated roadmap projection.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: Identifier

```
</details></div>