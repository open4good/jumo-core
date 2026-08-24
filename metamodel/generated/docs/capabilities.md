---
search:
  boost: 5.0
---

# Slot: capabilities

<div data-search-exclude markdown="1">



URI: [jumo:capabilities](https://jumo.dev/schemas/jumo-v1/capabilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ActionCapabilitySetSpec](ActionCapabilitySetSpec.md) |  |  no  |
| [McpProtocolProfile](McpProtocolProfile.md) | Supported MCP protocol capabilities and versions |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ActionCapabilitySetSpec](ActionCapabilitySetSpec.md), [McpProtocolProfile](McpProtocolProfile.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:capabilities |
| native | jumo:capabilities |




## LinkML Source

<details>
```yaml
name: capabilities
domain_of:
- ActionCapabilitySetSpec
- McpProtocolProfile
- McpInventorySnapshot
range: string

```
</details></div>