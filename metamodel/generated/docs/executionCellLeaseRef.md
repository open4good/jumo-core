---
search:
  boost: 5.0
---

# Slot: executionCellLeaseRef

<div data-search-exclude markdown="1">



URI: [jumo:executionCellLeaseRef](https://jumo.dev/schemas/jumo-v1/executionCellLeaseRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:executionCellLeaseRef |
| native | jumo:executionCellLeaseRef |




## LinkML Source

<details>
```yaml
name: executionCellLeaseRef
domain_of:
- InvocationAuthorizationReceipt
- McpInventorySnapshot
range: string

```
</details></div>