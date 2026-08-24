---
search:
  boost: 5.0
---

# Slot: grantedOperationRefs


_The only external reach available to the substrate._



<div data-search-exclude markdown="1">



URI: [jumo:grantedOperationRefs](https://jumo.dev/schemas/jumo-v1/grantedOperationRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkerGrantedOperation](WorkerGrantedOperation.md) |
| Domain Of | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantedOperationRefs |
| native | jumo:grantedOperationRefs |




## LinkML Source

<details>
```yaml
name: grantedOperationRefs
description: The only external reach available to the substrate.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerSubstrateSpec
domain_of:
- WorkerSubstrateSpec
range: WorkerGrantedOperation
required: true
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>