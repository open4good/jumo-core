---
search:
  boost: 5.0
---

# Slot: whenField

<div data-search-exclude markdown="1">



URI: [jumo:whenField](https://jumo.dev/schemas/jumo-v1/whenField)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) | One field of the emitted document and the collected value that decides whethe... |  no  |
| [AssistedJourneyEmissionCondition](AssistedJourneyEmissionCondition.md) | An equality condition deciding whether a bundle item is emitted at all, check... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md), [AssistedJourneyEmissionCondition](AssistedJourneyEmissionCondition.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:whenField |
| native | jumo:whenField |




## LinkML Source

<details>
```yaml
name: whenField
domain_of:
- AssistedJourneyFieldCondition
- AssistedJourneyEmissionCondition
range: string

```
</details></div>