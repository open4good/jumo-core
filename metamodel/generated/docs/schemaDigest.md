---
search:
  boost: 5.0
---

# Slot: schemaDigest

<div data-search-exclude markdown="1">



URI: [jumo:schemaDigest](https://jumo.dev/schemas/jumo-v1/schemaDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md) | Machine-authenticated request to authorize one planned MCP operation without ... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |
| [SchemaBinding](SchemaBinding.md) | Deterministic link between a payload, its LinkML class, and exact schema dige... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md), [SchemaBinding](SchemaBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:schemaDigest |
| native | jumo:schemaDigest |




## LinkML Source

<details>
```yaml
name: schemaDigest
domain_of:
- McpInvocationAuthorizationRequest
- McpInvocationAuthorizationReceipt
- SchemaBinding
range: string

```
</details></div>