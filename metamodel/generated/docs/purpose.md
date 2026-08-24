---
search:
  boost: 5.0
---

# Slot: purpose

<div data-search-exclude markdown="1">



URI: [jumo:purpose](https://jumo.dev/schemas/jumo-v1/purpose)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) |  |  no  |
| [TeamSpecBody](TeamSpecBody.md) |  |  no  |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [PracticeSpec](PracticeSpec.md) |  |  no  |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |  no  |
| [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art |  no  |
| [McpBundleSemanticProfile](McpBundleSemanticProfile.md) |  |  no  |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectSpec](ProjectSpec.md), [TeamSpecBody](TeamSpecBody.md), [WorkOrderSpec](WorkOrderSpec.md), [PracticeSpec](PracticeSpec.md), [PromptTemplateSpec](PromptTemplateSpec.md), [ImprovementLoopSpec](ImprovementLoopSpec.md), [ProcessingRegisterEntry](ProcessingRegisterEntry.md), [McpBundleSemanticProfile](McpBundleSemanticProfile.md), [Surface](Surface.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:purpose |
| native | jumo:purpose |




## LinkML Source

<details>
```yaml
name: purpose
domain_of:
- ProjectSpec
- TeamSpecBody
- WorkOrderSpec
- PracticeSpec
- PromptTemplateSpec
- ImprovementLoopSpec
- ProcessingRegisterEntry
- McpBundleSemanticProfile
- Surface
range: string

```
</details></div>