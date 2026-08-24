---
search:
  boost: 5.0
---

# Slot: validations


_Field-level checks the collected payload must pass before anything is written._



<div data-search-exclude markdown="1">



URI: [jumo:validations](https://jumo.dev/schemas/jumo-v1/validations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |
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
| self | jumo:validations |
| native | jumo:validations |




## LinkML Source

<details>
```yaml
name: validations
description: Field-level checks the collected payload must pass before anything is
  written.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyFieldValidation
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>