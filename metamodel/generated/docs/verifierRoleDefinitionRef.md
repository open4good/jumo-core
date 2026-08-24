---
search:
  boost: 5.0
---

# Slot: verifierRoleDefinitionRef


_The role that checks the result against the criteria below. May not be the producer; resolves through teamSpecRef to prove a different independence group (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:verifierRoleDefinitionRef](https://jumo.dev/schemas/jumo-v1/verifierRoleDefinitionRef)
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
| self | jumo:verifierRoleDefinitionRef |
| native | jumo:verifierRoleDefinitionRef |




## LinkML Source

<details>
```yaml
name: verifierRoleDefinitionRef
description: The role that checks the result against the criteria below. May not be
  the producer; resolves through teamSpecRef to prove a different independence group
  (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: ContractReference
inlined: true

```
</details></div>