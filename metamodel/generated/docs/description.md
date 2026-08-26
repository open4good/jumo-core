---
search:
  boost: 5.0
---

# Slot: description

<div data-search-exclude markdown="1">



URI: [jumo:description](https://jumo.dev/schemas/jumo-v1/description)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PromptVariable](PromptVariable.md) |  |  no  |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |
| [ActionCapability](ActionCapability.md) |  |  no  |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |  no  |
| [ConnectorOperation](ConnectorOperation.md) |  |  no  |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |
| [McpToolDescriptor](McpToolDescriptor.md) | Tool schema and metadata captured during MCP discovery |  no  |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |  no  |
| [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) | Specification for a ConnectorIntegration contract |  no  |
| [ApiResponseBinding](ApiResponseBinding.md) | Response schema binding for a specific HTTP status code |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PromptVariable](PromptVariable.md), [AssistedJourneySpec](AssistedJourneySpec.md), [AssistedJourneyStep](AssistedJourneyStep.md), [ActionCapability](ActionCapability.md), [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md), [ConnectorOperation](ConnectorOperation.md), [McpBundleOperation](McpBundleOperation.md), [McpToolDescriptor](McpToolDescriptor.md), [PlannedOperation](PlannedOperation.md), [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md), [ApiResponseBinding](ApiResponseBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:description |
| native | jumo:description |




## LinkML Source

<details>
```yaml
name: description
domain_of:
- PromptVariable
- AssistedJourneySpec
- AssistedJourneyStep
- ActionCapability
- MachineAdminPlaybookSpec
- ConnectorOperation
- McpBundleOperation
- McpToolDescriptor
- PlannedOperation
- ConnectorIntegrationSpec
- ApiResponseBinding
range: string

```
</details></div>