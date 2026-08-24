---
search:
  boost: 5.0
---

# Slot: boundedTrialEpisodesRequired

<div data-search-exclude markdown="1">



URI: [jumo:boundedTrialEpisodesRequired](https://jumo.dev/schemas/jumo-v1/boundedTrialEpisodesRequired)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:boundedTrialEpisodesRequired |
| native | jumo:boundedTrialEpisodesRequired |




## LinkML Source

<details>
```yaml
name: boundedTrialEpisodesRequired
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RoleLifecyclePolicySpec
domain_of:
- RoleLifecyclePolicySpec
range: integer
required: true
minimum_value: 1

```
</details></div>