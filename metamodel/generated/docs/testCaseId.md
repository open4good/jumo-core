---
search:
  boost: 5.0
---

# Slot: testCaseId

<div data-search-exclude markdown="1">



URI: [jumo:testCaseId](https://jumo.dev/schemas/jumo-v1/testCaseId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestCase](ConnectorTestCase.md) | A single test case in a connector verification plan |  no  |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestCase](ConnectorTestCase.md), [ConnectorTestResult](ConnectorTestResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:testCaseId |
| native | jumo:testCaseId |




## LinkML Source

<details>
```yaml
name: testCaseId
domain_of:
- ConnectorTestCase
- ConnectorTestResult
range: string

```
</details></div>