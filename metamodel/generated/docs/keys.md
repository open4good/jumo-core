---
search:
  boost: 5.0
---

# Slot: keys


_The keys each emitted item carries, in the order the document declares them._



<div data-search-exclude markdown="1">



URI: [jumo:keys](https://jumo.dev/schemas/jumo-v1/keys)
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
| Required | Yes |
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
| self | jumo:keys |
| native | jumo:keys |




## LinkML Source

<details>
```yaml
name: keys
description: The keys each emitted item carries, in the order the document declares
  them.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyCollectionProjection
domain_of:
- AssistedJourneyCollectionProjection
range: string
required: true
multivalued: true

```
</details></div>