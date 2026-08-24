---
search:
  boost: 5.0
---

# Slot: processSpecRef

<div data-search-exclude markdown="1">



URI: [jumo:processSpecRef](https://jumo.dev/schemas/jumo-v1/processSpecRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PracticeSpec](PracticeSpec.md) |  |  no  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PracticeSpec](PracticeSpec.md), [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:processSpecRef |
| native | jumo:processSpecRef |




## LinkML Source

<details>
```yaml
name: processSpecRef
domain_of:
- PracticeSpec
- AssistedJourneyStep
range: string

```
</details></div>