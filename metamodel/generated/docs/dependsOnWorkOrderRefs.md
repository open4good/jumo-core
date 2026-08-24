---
search:
  boost: 5.0
---

# Slot: dependsOnWorkOrderRefs


_WorkOrders that must be COMPLETED before this one starts._



<div data-search-exclude markdown="1">



URI: [jumo:dependsOnWorkOrderRefs](https://jumo.dev/schemas/jumo-v1/dependsOnWorkOrderRefs)
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
| self | jumo:dependsOnWorkOrderRefs |
| native | jumo:dependsOnWorkOrderRefs |




## LinkML Source

<details>
```yaml
name: dependsOnWorkOrderRefs
description: WorkOrders that must be COMPLETED before this one starts.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>