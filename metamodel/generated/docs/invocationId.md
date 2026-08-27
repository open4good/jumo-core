---
search:
  boost: 5.0
---

# Slot: invocationId

<div data-search-exclude markdown="1">



URI: [jumo:invocationId](https://jumo.dev/schemas/jumo-v1/invocationId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |
| [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md) | Machine-authenticated request to authorize one planned MCP operation without ... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |
| [McpInvocationOutcome](McpInvocationOutcome.md) | Sanitized terminal outcome for one dispatched MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md), [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md), [McpInvocationOutcome](McpInvocationOutcome.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:invocationId |
| native | jumo:invocationId |




## LinkML Source

<details>
```yaml
name: invocationId
domain_of:
- InvocationAuthorizationReceipt
- McpInvocationAuthorizationRequest
- McpInvocationAuthorizationReceipt
- McpInvocationOutcome
range: string

```
</details></div>