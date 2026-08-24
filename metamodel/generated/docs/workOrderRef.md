---
search:
  boost: 5.0
---

# Slot: workOrderRef

<div data-search-exclude markdown="1">



URI: [jumo:workOrderRef](https://jumo.dev/schemas/jumo-v1/workOrderRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpRegistrySourceSpec](McpRegistrySourceSpec.md), [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:workOrderRef |
| native | jumo:workOrderRef |




## LinkML Source

<details>
```yaml
name: workOrderRef
domain_of:
- McpRegistrySourceSpec
- McpRegistrySourceBindingSpec
- McpInventorySnapshot
range: string

```
</details></div>