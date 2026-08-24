---
search:
  boost: 5.0
---

# Slot: defaultWorkerRequirementProfileRef


_Optional, only meaningful when kind is AGENT._



<div data-search-exclude markdown="1">



URI: [jumo:defaultWorkerRequirementProfileRef](https://jumo.dev/schemas/jumo-v1/defaultWorkerRequirementProfileRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleBearer](RoleBearer.md) | Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [RoleBearer](RoleBearer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoleBearer](RoleBearer.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:defaultWorkerRequirementProfileRef |
| native | jumo:defaultWorkerRequirementProfileRef |




## LinkML Source

<details>
```yaml
name: defaultWorkerRequirementProfileRef
description: Optional, only meaningful when kind is AGENT.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoleBearer
domain_of:
- RoleBearer
range: ContractReference
inlined: true

```
</details></div>