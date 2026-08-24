---
search:
  boost: 5.0
---

# Slot: requiredIndependenceGroup


_Narrows eligible ProviderAccounts to those sharing this independenceGroup (own, or inherited from their ProviderPlatform). Two profiles at the same reasoningEffort rung are otherwise indistinguishable for routing purposes (provider-platform-catalog lot); a producing and a verifying role's profiles declare disjoint values here when ADR-0019's independence separation must hold operationally, not just architecturally. Absent by default -- most profiles route on rung alone._



<div data-search-exclude markdown="1">



URI: [jumo:requiredIndependenceGroup](https://jumo.dev/schemas/jumo-v1/requiredIndependenceGroup)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:requiredIndependenceGroup |
| native | jumo:requiredIndependenceGroup |




## LinkML Source

<details>
```yaml
name: requiredIndependenceGroup
description: Narrows eligible ProviderAccounts to those sharing this independenceGroup
  (own, or inherited from their ProviderPlatform). Two profiles at the same reasoningEffort
  rung are otherwise indistinguishable for routing purposes (provider-platform-catalog
  lot); a producing and a verifying role's profiles declare disjoint values here when
  ADR-0019's independence separation must hold operationally, not just architecturally.
  Absent by default -- most profiles route on rung alone.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerRequirementProfileSpec
domain_of:
- WorkerRequirementProfileSpec
range: Identifier

```
</details></div>