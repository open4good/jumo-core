---
search:
  boost: 5.0
---

# Slot: promptTemplateRef

<div data-search-exclude markdown="1">



URI: [jumo:promptTemplateRef](https://jumo.dev/schemas/jumo-v1/promptTemplateRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementStage](EngagementStage.md) |  |  no  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EngagementStage](EngagementStage.md), [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:promptTemplateRef |
| native | jumo:promptTemplateRef |




## LinkML Source

<details>
```yaml
name: promptTemplateRef
domain_of:
- EngagementStage
- AssistedJourneyStep
range: string

```
</details></div>