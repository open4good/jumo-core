---
search:
  boost: 5.0
---

# Slot: inputSchema

<div data-search-exclude markdown="1">



URI: [jumo:inputSchema](https://jumo.dev/schemas/jumo-v1/inputSchema)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpToolDescriptor](McpToolDescriptor.md) | Tool schema and metadata captured during MCP discovery |  no  |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpToolDescriptor](McpToolDescriptor.md), [PlannedOperation](PlannedOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:inputSchema |
| native | jumo:inputSchema |




## LinkML Source

<details>
```yaml
name: inputSchema
domain_of:
- McpToolDescriptor
- PlannedOperation
range: string

```
</details></div>