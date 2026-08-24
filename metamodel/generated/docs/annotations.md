---
search:
  boost: 5.0
---

# Slot: annotations

<div data-search-exclude markdown="1">



URI: [jumo:annotations](https://jumo.dev/schemas/jumo-v1/annotations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpToolDescriptor](McpToolDescriptor.md) | Tool schema and metadata captured during MCP discovery |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpToolDescriptor](McpToolDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:annotations |
| native | jumo:annotations |




## LinkML Source

<details>
```yaml
name: annotations
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpToolDescriptor
domain_of:
- McpToolDescriptor
range: string
multivalued: true

```
</details></div>