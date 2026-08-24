---
search:
  boost: 5.0
---

# Slot: milestones


_Declared in delivery order. Groups the generated roadmap and bounds every WorkOrder's roadmapRef (Rego corpus.work.roadmap-ref-declared)._



<div data-search-exclude markdown="1">



URI: [jumo:milestones](https://jumo.dev/schemas/jumo-v1/milestones)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Milestone](Milestone.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectSpec](ProjectSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:milestones |
| native | jumo:milestones |




## LinkML Source

<details>
```yaml
name: milestones
description: Declared in delivery order. Groups the generated roadmap and bounds every
  WorkOrder's roadmapRef (Rego corpus.work.roadmap-ref-declared).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectSpec
domain_of:
- ProjectSpec
range: Milestone
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>