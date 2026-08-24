---
search:
  boost: 5.0
---

# Slot: leadRoleDefinitionRef


_Required when any mechanism binding uses DIRECT_SUPERVISION; must resolve to a role leaf of this team. Conditional requiredness moves to Rego._



<div data-search-exclude markdown="1">



URI: [jumo:leadRoleDefinitionRef](https://jumo.dev/schemas/jumo-v1/leadRoleDefinitionRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TeamCoordination](TeamCoordination.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [TeamCoordination](TeamCoordination.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [TeamCoordination](TeamCoordination.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:leadRoleDefinitionRef |
| native | jumo:leadRoleDefinitionRef |




## LinkML Source

<details>
```yaml
name: leadRoleDefinitionRef
description: Required when any mechanism binding uses DIRECT_SUPERVISION; must resolve
  to a role leaf of this team. Conditional requiredness moves to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: TeamCoordination
domain_of:
- TeamCoordination
range: ContractReference
inlined: true

```
</details></div>