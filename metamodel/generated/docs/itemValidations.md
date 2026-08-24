---
search:
  boost: 5.0
---

# Slot: itemValidations


_Checks applied to each item, naming a key of the item rather than a field of the payload._



<div data-search-exclude markdown="1">



URI: [jumo:itemValidations](https://jumo.dev/schemas/jumo-v1/itemValidations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |
| Domain Of | [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:itemValidations |
| native | jumo:itemValidations |




## LinkML Source

<details>
```yaml
name: itemValidations
description: Checks applied to each item, naming a key of the item rather than a field
  of the payload.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyCollectionProjection
domain_of:
- AssistedJourneyCollectionProjection
range: AssistedJourneyFieldValidation
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>