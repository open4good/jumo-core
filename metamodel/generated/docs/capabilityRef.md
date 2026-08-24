---
search:
  boost: 5.0
---

# Slot: capabilityRef

<div data-search-exclude markdown="1">



URI: [jumo:capabilityRef](https://jumo.dev/schemas/jumo-v1/capabilityRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ImprovementTarget](ImprovementTarget.md) |  |  no  |
| [AttentionDecisionOption](AttentionDecisionOption.md) |  |  no  |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |
| [ConnectorOperation](ConnectorOperation.md) |  |  no  |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |
| [SurfaceWritePath](SurfaceWritePath.md) | Path traversal, editor-to-path compatibility, and required-obligation preserv... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ImprovementTarget](ImprovementTarget.md), [AttentionDecisionOption](AttentionDecisionOption.md), [ProcessStep](ProcessStep.md), [ConnectorOperation](ConnectorOperation.md), [McpBundleOperation](McpBundleOperation.md), [SurfaceWritePath](SurfaceWritePath.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:capabilityRef |
| native | jumo:capabilityRef |




## LinkML Source

<details>
```yaml
name: capabilityRef
domain_of:
- ImprovementTarget
- AttentionDecisionOption
- ProcessStep
- ConnectorOperation
- McpBundleOperation
- SurfaceWritePath
range: string

```
</details></div>