---
search:
  boost: 5.0
---

# Slot: name

<div data-search-exclude markdown="1">



URI: [jumo:name](https://jumo.dev/schemas/jumo-v1/name)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Metadata](Metadata.md) | Shared identity block for every contract document |  no  |
| [MethodologySource](MethodologySource.md) |  |  no  |
| [SelfDescriptionFact](SelfDescriptionFact.md) |  |  no  |
| [AgentCardSkill](AgentCardSkill.md) |  |  no  |
| [PromptVariable](PromptVariable.md) |  |  no  |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |
| [ActionCapability](ActionCapability.md) |  |  no  |
| [McpToolDescriptor](McpToolDescriptor.md) | Tool schema and metadata captured during MCP discovery |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Metadata](Metadata.md), [MethodologySource](MethodologySource.md), [SelfDescriptionFact](SelfDescriptionFact.md), [AgentCardSkill](AgentCardSkill.md), [PromptVariable](PromptVariable.md), [AssistedJourneySpec](AssistedJourneySpec.md), [AssistedJourneyStep](AssistedJourneyStep.md), [ActionCapability](ActionCapability.md), [McpToolDescriptor](McpToolDescriptor.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:name |
| native | jumo:name |




## LinkML Source

<details>
```yaml
name: name
domain_of:
- Metadata
- MethodologySource
- SelfDescriptionFact
- AgentCardSkill
- PromptVariable
- AssistedJourneySpec
- AssistedJourneyStep
- ActionCapability
- McpToolDescriptor
range: string

```
</details></div>