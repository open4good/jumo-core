---
search:
  boost: 5.0
---

# Slot: receipt

<div data-search-exclude markdown="1">



URI: [jumo:receipt](https://jumo.dev/schemas/jumo-v1/receipt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInvocationDispatchRequest](McpInvocationDispatchRequest.md) | Machine acknowledgement that a signed MCP invocation receipt is about to disp... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |
| Domain Of | [McpInvocationDispatchRequest](McpInvocationDispatchRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpInvocationDispatchRequest](McpInvocationDispatchRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:receipt |
| native | jumo:receipt |




## LinkML Source

<details>
```yaml
name: receipt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpInvocationDispatchRequest
domain_of:
- McpInvocationDispatchRequest
range: McpInvocationAuthorizationReceipt
required: true
inlined: true

```
</details></div>