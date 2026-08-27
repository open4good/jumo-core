---
search:
  boost: 5.0
---

# Slot: grantId

<div data-search-exclude markdown="1">



URI: [jumo:grantId](https://jumo.dev/schemas/jumo-v1/grantId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |  no  |
| [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md) | Machine-authenticated request to authorize one planned MCP operation without ... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DelegatedSecretGrant](DelegatedSecretGrant.md), [PlannedOperation](PlannedOperation.md), [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:grantId |
| native | jumo:grantId |




## LinkML Source

<details>
```yaml
name: grantId
domain_of:
- DelegatedSecretGrant
- PlannedOperation
- McpInvocationAuthorizationRequest
- McpInvocationAuthorizationReceipt
range: string

```
</details></div>