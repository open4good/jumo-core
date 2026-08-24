---
search:
  boost: 5.0
---

# Slot: effortLadder


_Overrides the platform's defaultEffortLadder rung for rung when declared. Absent by default, so a newly declared account inherits the platform's ladder and is routable immediately -- the fix for the N-times-M dead account problem a per-account requirementAliases list produced._



<div data-search-exclude markdown="1">



URI: [jumo:effortLadder](https://jumo.dev/schemas/jumo-v1/effortLadder)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderRouting](ProviderRouting.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EffortRungSpec](EffortRungSpec.md) |
| Domain Of | [ProviderRouting](ProviderRouting.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderRouting](ProviderRouting.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:effortLadder |
| native | jumo:effortLadder |




## LinkML Source

<details>
```yaml
name: effortLadder
description: Overrides the platform's defaultEffortLadder rung for rung when declared.
  Absent by default, so a newly declared account inherits the platform's ladder and
  is routable immediately -- the fix for the N-times-M dead account problem a per-account
  requirementAliases list produced.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderRouting
domain_of:
- ProviderRouting
range: EffortRungSpec
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>