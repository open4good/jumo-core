---
search:
  boost: 5.0
---

# Slot: producerRoleDefinitionRef


_The individual accountable role. A team is never the final accountable addressee._



<div data-search-exclude markdown="1">



URI: [jumo:producerRoleDefinitionRef](https://jumo.dev/schemas/jumo-v1/producerRoleDefinitionRef)
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
| Required | Yes |
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
| self | jumo:producerRoleDefinitionRef |
| native | jumo:producerRoleDefinitionRef |




## LinkML Source

<details>
```yaml
name: producerRoleDefinitionRef
description: The individual accountable role. A team is never the final accountable
  addressee.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: ContractReference
required: true
inlined: true

```
</details></div>