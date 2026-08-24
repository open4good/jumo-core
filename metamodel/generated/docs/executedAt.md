---
search:
  boost: 5.0
---

# Slot: executedAt

<div data-search-exclude markdown="1">



URI: [jumo:executedAt](https://jumo.dev/schemas/jumo-v1/executedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestResult](ConnectorTestResult.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ConnectorTestResult](ConnectorTestResult.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:executedAt |
| native | jumo:executedAt |




## LinkML Source

<details>
```yaml
name: executedAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ConnectorTestResult
domain_of:
- ConnectorTestResult
range: string
required: true

```
</details></div>