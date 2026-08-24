---
search:
  boost: 5.0
---

# Slot: adapter

<div data-search-exclude markdown="1">



URI: [jumo:adapter](https://jumo.dev/schemas/jumo-v1/adapter)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpRegistrySourceSpec](McpRegistrySourceSpec.md), [ProviderSessionBinding](ProviderSessionBinding.md), [RoutingDecision](RoutingDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:adapter |
| native | jumo:adapter |




## LinkML Source

<details>
```yaml
name: adapter
domain_of:
- McpRegistrySourceSpec
- ProviderSessionBinding
- RoutingDecision
range: string

```
</details></div>