---
search:
  boost: 5.0
---

# Slot: coordination


_The managed dependency, not the team, is the unit of analysis (docs/concepts/positionnement-conceptuel.md#coordination-des-dependances). The source schema forced one `mode` for the whole team; this carries one or more CoordinationMechanismBinding entries instead, each scoped to the dependency it governs._



<div data-search-exclude markdown="1">



URI: [jumo:coordination](https://jumo.dev/schemas/jumo-v1/coordination)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TeamSpecBody](TeamSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [TeamCoordination](TeamCoordination.md) |
| Domain Of | [TeamSpecBody](TeamSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [TeamSpecBody](TeamSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:coordination |
| native | jumo:coordination |




## LinkML Source

<details>
```yaml
name: coordination
description: The managed dependency, not the team, is the unit of analysis (docs/concepts/positionnement-conceptuel.md#coordination-des-dependances).
  The source schema forced one `mode` for the whole team; this carries one or more
  CoordinationMechanismBinding entries instead, each scoped to the dependency it governs.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: TeamSpecBody
domain_of:
- TeamSpecBody
range: TeamCoordination
required: true
inlined: true

```
</details></div>