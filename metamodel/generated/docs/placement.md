---
search:
  boost: 5.0
---

# Slot: placement

<div data-search-exclude markdown="1">



URI: [jumo:placement](https://jumo.dev/schemas/jumo-v1/placement)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |  |  no  |
| [McpBundleRuntime](McpBundleRuntime.md) | An McpBundle's single upstream branch is always OCI_STDIO with a pinned artif... |  no  |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md), [McpBundleRuntime](McpBundleRuntime.md), [ExecutionCellSpec](ExecutionCellSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:placement |
| native | jumo:placement |




## LinkML Source

<details>
```yaml
name: placement
domain_of:
- ConnectorDefinitionSpec
- McpBundleRuntime
- ExecutionCellSpec
range: string

```
</details></div>