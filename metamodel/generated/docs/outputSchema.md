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






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SchemaBoundPayload](SchemaBoundPayload.md) |
| Domain Of | [McpToolDescriptor](McpToolDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpToolDescriptor](McpToolDescriptor.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:outputSchema |
| native | jumo:outputSchema |




## LinkML Source

<details>
```yaml
name: outputSchema
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpToolDescriptor
domain_of:
- McpToolDescriptor
range: SchemaBoundPayload
inlined: true

```
</details></div>