---
search:
  boost: 5.0
---

# Slot: serverId

<div data-search-exclude markdown="1">



URI: [jumo:serverId](https://jumo.dev/schemas/jumo-v1/serverId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:serverId |
| native | jumo:serverId |




## LinkML Source

<details>
```yaml
name: serverId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpInventorySnapshot
domain_of:
- McpInventorySnapshot
range: string
required: true

```
</details></div>