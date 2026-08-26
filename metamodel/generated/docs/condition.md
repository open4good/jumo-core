---
search:
  boost: 5.0
---

# Slot: condition

<div data-search-exclude markdown="1">



URI: [jumo:condition](https://jumo.dev/schemas/jumo-v1/condition)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) | One ordered document of an atomic same-repository bundle |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md), [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:condition |
| native | jumo:condition |




## LinkML Source

<details>
```yaml
name: condition
domain_of:
- WorkOrderSpec
- AssistedJourneyEmissionBundleItem
range: string

```
</details></div>