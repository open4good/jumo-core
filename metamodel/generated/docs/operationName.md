---
search:
  boost: 5.0
---

# Slot: operationName

<div data-search-exclude markdown="1">



URI: [jumo:operationName](https://jumo.dev/schemas/jumo-v1/operationName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md) | Machine-authenticated request to authorize one planned MCP operation without ... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:operationName |
| native | jumo:operationName |




## LinkML Source

<details>
```yaml
name: operationName
domain_of:
- McpInvocationAuthorizationRequest
- McpInvocationAuthorizationReceipt
range: string

```
</details></div>