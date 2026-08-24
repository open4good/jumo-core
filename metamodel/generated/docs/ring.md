---
search:
  boost: 5.0
---

# Slot: ring

<div data-search-exclude markdown="1">



URI: [jumo:ring](https://jumo.dev/schemas/jumo-v1/ring)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |  no  |
| [ImprovementTarget](ImprovementTarget.md) |  |  no  |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |
| [SurfaceWritePath](SurfaceWritePath.md) | Path traversal, editor-to-path compatibility, and required-obligation preserv... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md), [PromptTemplateSpec](PromptTemplateSpec.md), [ImprovementTarget](ImprovementTarget.md), [ProcessStep](ProcessStep.md), [SurfaceWritePath](SurfaceWritePath.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ring |
| native | jumo:ring |




## LinkML Source

<details>
```yaml
name: ring
domain_of:
- WorkOrderSpec
- PromptTemplateSpec
- ImprovementTarget
- ProcessStep
- SurfaceWritePath
range: string

```
</details></div>