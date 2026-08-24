---
search:
  boost: 5.0
---

# Slot: emitsCapability


_The single capability a proposal journey may invoke. Observation journeys leave this absent._



<div data-search-exclude markdown="1">



URI: [jumo:emitsCapability](https://jumo.dev/schemas/jumo-v1/emitsCapability)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CapabilityName](CapabilityName.md) |
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
| self | jumo:emitsCapability |
| native | jumo:emitsCapability |




## LinkML Source

<details>
```yaml
name: emitsCapability
description: The single capability a proposal journey may invoke. Observation journeys
  leave this absent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: CapabilityName

```
</details></div>