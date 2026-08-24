---
search:
  boost: 5.0
---

# Slot: state

<div data-search-exclude markdown="1">



URI: [jumo:state](https://jumo.dev/schemas/jumo-v1/state)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) |  |  no  |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |  |  no  |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OfferingSpecBody](OfferingSpecBody.md), [WorkOrderSpec](WorkOrderSpec.md), [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md), [ChangeSetProjection](ChangeSetProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:state |
| native | jumo:state |




## LinkML Source

<details>
```yaml
name: state
domain_of:
- OfferingSpecBody
- WorkOrderSpec
- ImprovementRecommendationSpec
- ChangeSetProjection
range: string

```
</details></div>