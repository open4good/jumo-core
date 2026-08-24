---
search:
  boost: 5.0
---

# Slot: quality

<div data-search-exclude markdown="1">



URI: [jumo:quality](https://jumo.dev/schemas/jumo-v1/quality)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkerQualityRequirement](WorkerQualityRequirement.md) |
| Domain Of | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:quality |
| native | jumo:quality |




## LinkML Source

<details>
```yaml
name: quality
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerRequirementProfileSpec
domain_of:
- WorkerRequirementProfileSpec
range: WorkerQualityRequirement
required: true
inlined: true

```
</details></div>