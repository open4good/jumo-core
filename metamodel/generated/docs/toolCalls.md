---
search:
  boost: 5.0
---

# Slot: toolCalls

<div data-search-exclude markdown="1">



URI: [jumo:toolCalls](https://jumo.dev/schemas/jumo-v1/toolCalls)
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
| self | jumo:toolCalls |
| native | jumo:toolCalls |




## LinkML Source

<details>
```yaml
name: toolCalls
domain_of:
- ConsumptionReport
- BudgetLimits
range: string

```
</details></div>