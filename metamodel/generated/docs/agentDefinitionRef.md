---
search:
  boost: 5.0
---

# Slot: agentDefinitionRef

<div data-search-exclude markdown="1">



URI: [jumo:agentDefinitionRef](https://jumo.dev/schemas/jumo-v1/agentDefinitionRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoleBearer](RoleBearer.md) | Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema |  no  |
| [EngagementMethodSpec](EngagementMethodSpec.md) |  |  no  |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoleBearer](RoleBearer.md), [EngagementMethodSpec](EngagementMethodSpec.md), [PromptTemplateSpec](PromptTemplateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:agentDefinitionRef |
| native | jumo:agentDefinitionRef |




## LinkML Source

<details>
```yaml
name: agentDefinitionRef
domain_of:
- RoleBearer
- EngagementMethodSpec
- PromptTemplateSpec
range: string

```
</details></div>