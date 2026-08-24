---
search:
  boost: 5.0
---

# Slot: rung


_Matches a WorkerRequirementProfile.spec.quality.reasoningEffort value one for one; the resolver picks the account's rung with the same name instead of a per-profile alias._



<div data-search-exclude markdown="1">



URI: [jumo:rung](https://jumo.dev/schemas/jumo-v1/rung)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EffortRungSpec](EffortRungSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ReasoningEffort](ReasoningEffort.md) |
| Domain Of | [EffortRungSpec](EffortRungSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EffortRungSpec](EffortRungSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:rung |
| native | jumo:rung |




## LinkML Source

<details>
```yaml
name: rung
description: Matches a WorkerRequirementProfile.spec.quality.reasoningEffort value
  one for one; the resolver picks the account's rung with the same name instead of
  a per-profile alias.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EffortRungSpec
domain_of:
- EffortRungSpec
range: ReasoningEffort
required: true

```
</details></div>