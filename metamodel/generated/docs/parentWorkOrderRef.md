---
search:
  boost: 5.0
---

# Slot: parentWorkOrderRef


_The larger item this decomposes._



<div data-search-exclude markdown="1">



URI: [jumo:parentWorkOrderRef](https://jumo.dev/schemas/jumo-v1/parentWorkOrderRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
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
| self | jumo:parentWorkOrderRef |
| native | jumo:parentWorkOrderRef |




## LinkML Source

<details>
```yaml
name: parentWorkOrderRef
description: The larger item this decomposes.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: ContractReference
inlined: true

```
</details></div>