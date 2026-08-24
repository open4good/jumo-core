---
search:
  boost: 5.0
---

# Slot: operationId

<div data-search-exclude markdown="1">



URI: [jumo:operationId](https://jumo.dev/schemas/jumo-v1/operationId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestCase](ConnectorTestCase.md) | A single test case in a connector verification plan |  no  |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestCase](ConnectorTestCase.md), [ApiOperation](ApiOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:operationId |
| native | jumo:operationId |




## LinkML Source

<details>
```yaml
name: operationId
domain_of:
- ConnectorTestCase
- ApiOperation
range: string

```
</details></div>