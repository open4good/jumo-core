---
search:
  boost: 5.0
---

# Slot: goldenTaskSetRefs

<div data-search-exclude markdown="1">



URI: [jumo:goldenTaskSetRefs](https://jumo.dev/schemas/jumo-v1/goldenTaskSetRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerQualityRequirement](WorkerQualityRequirement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [WorkerQualityRequirement](WorkerQualityRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerQualityRequirement](WorkerQualityRequirement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:goldenTaskSetRefs |
| native | jumo:goldenTaskSetRefs |




## LinkML Source

<details>
```yaml
name: goldenTaskSetRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerQualityRequirement
domain_of:
- WorkerQualityRequirement
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>