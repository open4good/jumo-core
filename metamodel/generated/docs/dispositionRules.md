---
search:
  boost: 5.0
---

# Slot: dispositionRules

<div data-search-exclude markdown="1">



URI: [jumo:dispositionRules](https://jumo.dev/schemas/jumo-v1/dispositionRules)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DispositionRule](DispositionRule.md) |
| Domain Of | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:dispositionRules |
| native | jumo:dispositionRules |




## LinkML Source

<details>
```yaml
name: dispositionRules
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChiefOfStaffProfileSpec
domain_of:
- ChiefOfStaffProfileSpec
range: DispositionRule
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>