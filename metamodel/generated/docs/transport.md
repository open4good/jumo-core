---
search:
  boost: 5.0
---

# Slot: transport

<div data-search-exclude markdown="1">



URI: [jumo:transport](https://jumo.dev/schemas/jumo-v1/transport)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |  |  no  |
| [McpBundleRuntime](McpBundleRuntime.md) | An McpBundle's single upstream branch is always OCI_STDIO with a pinned artif... |  no  |
| [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |  |  no  |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |
| [McpServerDescriptor](McpServerDescriptor.md) | Descriptor specifying MCP server transport and connection target |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md), [McpBundleRuntime](McpBundleRuntime.md), [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md), [ExecutionCellSpec](ExecutionCellSpec.md), [FederatedPeerSpec](FederatedPeerSpec.md), [McpServerDescriptor](McpServerDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:transport |
| native | jumo:transport |




## LinkML Source

<details>
```yaml
name: transport
domain_of:
- ConnectorDefinitionSpec
- McpBundleRuntime
- RemoteMcpServiceSpec
- ExecutionCellSpec
- FederatedPeerSpec
- McpServerDescriptor
range: string

```
</details></div>