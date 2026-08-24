---
search:
  boost: 5.0
---

# Slot: endpointUrl

<div data-search-exclude markdown="1">



URI: [jumo:endpointUrl](https://jumo.dev/schemas/jumo-v1/endpointUrl)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpServerDescriptor](McpServerDescriptor.md) | Descriptor specifying MCP server transport and connection target |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpServerDescriptor](McpServerDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpServerDescriptor](McpServerDescriptor.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:endpointUrl |
| native | jumo:endpointUrl |




## LinkML Source

<details>
```yaml
name: endpointUrl
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpServerDescriptor
domain_of:
- McpServerDescriptor
range: string

```
</details></div>