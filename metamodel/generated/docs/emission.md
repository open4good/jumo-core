---
search:
  boost: 5.0
---

# Slot: emission


_What a PROPOSAL journey emits when its run completes: the contract kind, where it is written, the template that renders it, and the checks the collected fields must pass. Rego requires it of every PROPOSAL journey (canonical decision 15) -- without it the platform would have to recognise the journey by name to know what it produces, which is the dispatch this slot exists to remove._



<div data-search-exclude markdown="1">



URI: [jumo:emission](https://jumo.dev/schemas/jumo-v1/emission)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyEmission](AssistedJourneyEmission.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:emission |
| native | jumo:emission |




## LinkML Source

<details>
```yaml
name: emission
description: 'What a PROPOSAL journey emits when its run completes: the contract kind,
  where it is written, the template that renders it, and the checks the collected
  fields must pass. Rego requires it of every PROPOSAL journey (canonical decision
  15) -- without it the platform would have to recognise the journey by name to know
  what it produces, which is the dispatch this slot exists to remove.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: AssistedJourneyEmission
inlined: true

```
</details></div>