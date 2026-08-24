---
search:
  boost: 5.0
---

# Slot: lifecycle

<div data-search-exclude markdown="1">



URI: [jumo:lifecycle](https://jumo.dev/schemas/jumo-v1/lifecycle)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |  no  |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |  no  |
| [McpRegistrySyncStatus](McpRegistrySyncStatus.md) |  |  no  |
| [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |  |  no  |
| [McpBundleSpec](McpBundleSpec.md) |  |  no  |
| [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |  |  no  |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md), [McpRegistrySourceSpec](McpRegistrySourceSpec.md), [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md), [McpRegistrySyncStatus](McpRegistrySyncStatus.md), [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md), [McpBundleSpec](McpBundleSpec.md), [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md), [ExecutionCellSpec](ExecutionCellSpec.md), [SecretBindingSpec](SecretBindingSpec.md), [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:lifecycle |
| native | jumo:lifecycle |




## LinkML Source

<details>
```yaml
name: lifecycle
domain_of:
- ProjectSpec
- McpRegistrySourceSpec
- McpRegistrySourceBindingSpec
- McpRegistrySyncStatus
- ConnectorDefinitionSpec
- McpBundleSpec
- RemoteMcpServiceSpec
- ExecutionCellSpec
- SecretBindingSpec
- WorkerSubstrateSpec
range: string

```
</details></div>