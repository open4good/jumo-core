---
search:
  boost: 5.0
---

# Slot: optionalKeys


_Keys carried only when the collected item supplies a non-blank value._



<div data-search-exclude markdown="1">



URI: [jumo:optionalKeys](https://jumo.dev/schemas/jumo-v1/optionalKeys)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:optionalKeys |
| native | jumo:optionalKeys |




## LinkML Source

<details>
```yaml
name: optionalKeys
description: Keys carried only when the collected item supplies a non-blank value.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyCollectionProjection
domain_of:
- AssistedJourneyCollectionProjection
range: string
multivalued: true

```
</details></div>