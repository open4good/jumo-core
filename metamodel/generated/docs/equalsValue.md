---
search:
  boost: 5.0
---

# Slot: equalsValue

<div data-search-exclude markdown="1">



URI: [jumo:equalsValue](https://jumo.dev/schemas/jumo-v1/equalsValue)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) | One field of the emitted document and the collected value that decides whethe... |  no  |
| [ProjectionOptionCondition](ProjectionOptionCondition.md) | One condition a candidate instance must satisfy to be offered as a field's op... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md), [ProjectionOptionCondition](ProjectionOptionCondition.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:equalsValue |
| native | jumo:equalsValue |




## LinkML Source

<details>
```yaml
name: equalsValue
domain_of:
- AssistedJourneyFieldCondition
- ProjectionOptionCondition
range: string

```
</details></div>