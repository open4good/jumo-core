---
search:
  boost: 5.0
---

# Slot: signingKeyName

<div data-search-exclude markdown="1">



URI: [jumo:signingKeyName](https://jumo.dev/schemas/jumo-v1/signingKeyName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SessionPlan](SessionPlan.md) | Signed MCP gateway session plan scoped to one ExecutionCellLease (mcp-gateway... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [SessionPlan](SessionPlan.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:signingKeyName |
| native | jumo:signingKeyName |




## LinkML Source

<details>
```yaml
name: signingKeyName
domain_of:
- SessionPlan
- McpInvocationAuthorizationReceipt
range: string

```
</details></div>