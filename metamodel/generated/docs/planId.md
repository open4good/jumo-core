---
search:
  boost: 5.0
---

# Slot: planId

<div data-search-exclude markdown="1">



URI: [jumo:planId](https://jumo.dev/schemas/jumo-v1/planId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |  no  |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestPlan](ConnectorTestPlan.md), [ConnectorTestResult](ConnectorTestResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:planId |
| native | jumo:planId |




## LinkML Source

<details>
```yaml
name: planId
domain_of:
- ConnectorTestPlan
- ConnectorTestResult
range: string

```
</details></div>