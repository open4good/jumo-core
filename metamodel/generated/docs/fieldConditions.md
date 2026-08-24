---
search:
  boost: 5.0
---

# Slot: fieldConditions


_Fields the emitted document carries only under a declared condition. A template drops a key whose lone placeholder resolves to nothing, so a conditional key needs no template conditional of its own -- the condition removes the value and the existing absence rule removes the key. Applied after fieldDefaults, so a default never resurrects a field the condition has removed._



<div data-search-exclude markdown="1">



URI: [jumo:fieldConditions](https://jumo.dev/schemas/jumo-v1/fieldConditions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) |
| Domain Of | [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmission](AssistedJourneyEmission.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:fieldConditions |
| native | jumo:fieldConditions |




## LinkML Source

<details>
```yaml
name: fieldConditions
description: Fields the emitted document carries only under a declared condition.
  A template drops a key whose lone placeholder resolves to nothing, so a conditional
  key needs no template conditional of its own -- the condition removes the value
  and the existing absence rule removes the key. Applied after fieldDefaults, so a
  default never resurrects a field the condition has removed.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyFieldCondition
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>