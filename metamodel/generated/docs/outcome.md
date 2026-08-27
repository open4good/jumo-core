---
search:
  boost: 5.0
---

# Slot: outcome

<div data-search-exclude markdown="1">



URI: [jumo:outcome](https://jumo.dev/schemas/jumo-v1/outcome)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DispositionRule](DispositionRule.md) |  |  no  |
| [McpCatalogAssessment](McpCatalogAssessment.md) |  |  no  |
| [AppraisalDimension](AppraisalDimension.md) |  |  no  |
| [McpInvocationOutcome](McpInvocationOutcome.md) | Sanitized terminal outcome for one dispatched MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DispositionRule](DispositionRule.md), [McpCatalogAssessment](McpCatalogAssessment.md), [AppraisalDimension](AppraisalDimension.md), [McpInvocationOutcome](McpInvocationOutcome.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:outcome |
| native | jumo:outcome |




## LinkML Source

<details>
```yaml
name: outcome
domain_of:
- DispositionRule
- McpCatalogAssessment
- AppraisalDimension
- McpInvocationOutcome
range: string

```
</details></div>