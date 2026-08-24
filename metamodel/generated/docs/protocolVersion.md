---
search:
  boost: 5.0
---

# Slot: protocolVersion

<div data-search-exclude markdown="1">



URI: [jumo:protocolVersion](https://jumo.dev/schemas/jumo-v1/protocolVersion)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentCard](AgentCard.md) | A2A v1 |  no  |
| [McpProtocolProfile](McpProtocolProfile.md) | Supported MCP protocol capabilities and versions |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AgentCard](AgentCard.md), [McpProtocolProfile](McpProtocolProfile.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:protocolVersion |
| native | jumo:protocolVersion |




## LinkML Source

<details>
```yaml
name: protocolVersion
domain_of:
- AgentCard
- McpProtocolProfile
- McpInventorySnapshot
range: string

```
</details></div>