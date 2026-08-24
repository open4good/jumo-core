---
search:
  boost: 5.0
---

# Slot: limits

<div data-search-exclude markdown="1">



URI: [jumo:limits](https://jumo.dev/schemas/jumo-v1/limits)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |  no  |
| [ResourceBudgetSpec](ResourceBudgetSpec.md) |  |  no  |
| [WorkerIsolation](WorkerIsolation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md), [ResourceBudgetSpec](ResourceBudgetSpec.md), [WorkerIsolation](WorkerIsolation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:limits |
| native | jumo:limits |




## LinkML Source

<details>
```yaml
name: limits
domain_of:
- WorkerRequirementProfileSpec
- ResourceBudgetSpec
- WorkerIsolation
range: string

```
</details></div>