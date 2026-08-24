---
search:
  boost: 5.0
---

# Slot: idempotency

<div data-search-exclude markdown="1">



URI: [jumo:idempotency](https://jumo.dev/schemas/jumo-v1/idempotency)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorOperation](ConnectorOperation.md) |  |  no  |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorOperation](ConnectorOperation.md), [McpBundleOperation](McpBundleOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:idempotency |
| native | jumo:idempotency |




## LinkML Source

<details>
```yaml
name: idempotency
domain_of:
- ConnectorOperation
- McpBundleOperation
range: string

```
</details></div>