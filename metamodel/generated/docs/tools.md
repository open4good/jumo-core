---
search:
  boost: 5.0
---

# Slot: tools

<div data-search-exclude markdown="1">



URI: [jumo:tools](https://jumo.dev/schemas/jumo-v1/tools)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [McpToolDescriptor](McpToolDescriptor.md) |
| Domain Of | [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpInventorySnapshot](McpInventorySnapshot.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:tools |
| native | jumo:tools |




## LinkML Source

<details>
```yaml
name: tools
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpInventorySnapshot
domain_of:
- McpInventorySnapshot
range: McpToolDescriptor
multivalued: true
inlined: true

```
</details></div>