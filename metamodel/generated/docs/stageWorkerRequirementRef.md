---
search:
  boost: 5.0
---

# Slot: stageWorkerRequirementRef


_Task requirements per model-using step (source schema's open string-keyed map, modeled as key/value pairs -- see ThemePack for the same pattern). Every key must name a declared step and every value resolves to a WorkerRequirementProfile (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:stageWorkerRequirementRef](https://jumo.dev/schemas/jumo-v1/stageWorkerRequirementRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProcessStageWorkerRequirement](ProcessStageWorkerRequirement.md) |
| Domain Of | [ProcessSpecBody](ProcessSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessSpecBody](ProcessSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:stageWorkerRequirementRef |
| native | jumo:stageWorkerRequirementRef |




## LinkML Source

<details>
```yaml
name: stageWorkerRequirementRef
description: Task requirements per model-using step (source schema's open string-keyed
  map, modeled as key/value pairs -- see ThemePack for the same pattern). Every key
  must name a declared step and every value resolves to a WorkerRequirementProfile
  (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessSpecBody
domain_of:
- ProcessSpecBody
range: ProcessStageWorkerRequirement
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>