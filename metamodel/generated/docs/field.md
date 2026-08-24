---
search:
  boost: 5.0
---

# Slot: field

<div data-search-exclude markdown="1">



URI: [jumo:field](https://jumo.dev/schemas/jumo-v1/field)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |  |  no  |
| [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) | One field of the emitted document and the collected value that decides whethe... |  no  |
| [AssistedJourneyReferenceCheck](AssistedJourneyReferenceCheck.md) |  |  no  |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |  |  no  |
| [AssistedJourneyFieldDefault](AssistedJourneyFieldDefault.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md), [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md), [AssistedJourneyReferenceCheck](AssistedJourneyReferenceCheck.md), [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md), [AssistedJourneyFieldDefault](AssistedJourneyFieldDefault.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:field |
| native | jumo:field |




## LinkML Source

<details>
```yaml
name: field
domain_of:
- AssistedJourneyFieldValidation
- AssistedJourneyFieldCondition
- AssistedJourneyReferenceCheck
- AssistedJourneyCollectionProjection
- AssistedJourneyFieldDefault
range: string

```
</details></div>