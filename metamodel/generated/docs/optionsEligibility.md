---
search:
  boost: 5.0
---

# Slot: optionsEligibility


_Conditions every instance of `optionsFrom` must satisfy to be offered. The eligibility a selection applies is part of what the contract says the field means, so it is declared here rather than left to whichever surface happens to render the field. Conditions read the candidate's Git document only -- desired and contractual state; recognized runtime state (a machine's observed health) is a different authority and is not reachable from a projection._



<div data-search-exclude markdown="1">



URI: [jumo:optionsEligibility](https://jumo.dev/schemas/jumo-v1/optionsEligibility)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectionField](ProjectionField.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProjectionOptionCondition](ProjectionOptionCondition.md) |
| Domain Of | [ProjectionField](ProjectionField.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectionField](ProjectionField.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:optionsEligibility |
| native | jumo:optionsEligibility |




## LinkML Source

<details>
```yaml
name: optionsEligibility
description: Conditions every instance of `optionsFrom` must satisfy to be offered.
  The eligibility a selection applies is part of what the contract says the field
  means, so it is declared here rather than left to whichever surface happens to render
  the field. Conditions read the candidate's Git document only -- desired and contractual
  state; recognized runtime state (a machine's observed health) is a different authority
  and is not reachable from a projection.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectionField
domain_of:
- ProjectionField
range: ProjectionOptionCondition
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>