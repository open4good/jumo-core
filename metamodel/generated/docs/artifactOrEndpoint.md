---
search:
  boost: 5.0
---

# Slot: artifactOrEndpoint

<div data-search-exclude markdown="1">



URI: [jumo:artifactOrEndpoint](https://jumo.dev/schemas/jumo-v1/artifactOrEndpoint)
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
| self | jumo:artifactOrEndpoint |
| native | jumo:artifactOrEndpoint |




## LinkML Source

<details>
```yaml
name: artifactOrEndpoint
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpInventorySnapshot
domain_of:
- McpInventorySnapshot
range: string

```
</details></div>