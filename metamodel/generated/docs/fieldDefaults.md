---
search:
  boost: 5.0
---

# Slot: fieldDefaults


_Values used when a field was not collected, so a template needs no conditional of its own._



<div data-search-exclude markdown="1">



URI: [jumo:fieldDefaults](https://jumo.dev/schemas/jumo-v1/fieldDefaults)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyFieldDefault](AssistedJourneyFieldDefault.md) |
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
| self | jumo:fieldDefaults |
| native | jumo:fieldDefaults |




## LinkML Source

<details>
```yaml
name: fieldDefaults
description: Values used when a field was not collected, so a template needs no conditional
  of its own.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyFieldDefault
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>