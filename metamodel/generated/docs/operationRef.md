---
search:
  boost: 5.0
---

# Slot: operationRef

<div data-search-exclude markdown="1">



URI: [jumo:operationRef](https://jumo.dev/schemas/jumo-v1/operationRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |
| [WorkerGrantedOperation](WorkerGrantedOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md), [WorkerGrantedOperation](WorkerGrantedOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:operationRef |
| native | jumo:operationRef |




## LinkML Source

<details>
```yaml
name: operationRef
domain_of:
- InvocationAuthorizationReceipt
- WorkerGrantedOperation
range: string

```
</details></div>