---
search:
  boost: 5.0
---

# Slot: outputSchema

<div data-search-exclude markdown="1">



URI: [jumo:outputSchema](https://jumo.dev/schemas/jumo-v1/outputSchema)
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
| self | jumo:outputSchema |
| native | jumo:outputSchema |




## LinkML Source

<details>
```yaml
name: outputSchema
domain_of:
- McpToolDescriptor
- PlannedOperation
range: string

```
</details></div>