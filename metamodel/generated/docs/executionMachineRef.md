---
search:
  boost: 5.0
---

# Slot: executionMachineRef

<div data-search-exclude markdown="1">



URI: [jumo:executionMachineRef](https://jumo.dev/schemas/jumo-v1/executionMachineRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md), [ProviderSessionBinding](ProviderSessionBinding.md), [WorkerSubstrateSpec](WorkerSubstrateSpec.md), [McpInventorySnapshot](McpInventorySnapshot.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:executionMachineRef |
| native | jumo:executionMachineRef |




## LinkML Source

<details>
```yaml
name: executionMachineRef
domain_of:
- McpRegistrySourceBindingSpec
- ProviderSessionBinding
- WorkerSubstrateSpec
- McpInventorySnapshot
range: string

```
</details></div>