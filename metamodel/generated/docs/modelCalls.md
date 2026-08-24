---
search:
  boost: 5.0
---

# Slot: modelCalls

<div data-search-exclude markdown="1">



URI: [jumo:modelCalls](https://jumo.dev/schemas/jumo-v1/modelCalls)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConsumptionReport](ConsumptionReport.md) | What the work spent, in units ResourceBudget declares |  no  |
| [BudgetLimits](BudgetLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConsumptionReport](ConsumptionReport.md), [BudgetLimits](BudgetLimits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:modelCalls |
| native | jumo:modelCalls |




## LinkML Source

<details>
```yaml
name: modelCalls
domain_of:
- ConsumptionReport
- BudgetLimits
range: string

```
</details></div>