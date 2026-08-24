---
search:
  boost: 5.0
---

# Slot: title

<div data-search-exclude markdown="1">



URI: [jumo:title](https://jumo.dev/schemas/jumo-v1/title)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |
| [WorkOrderSpecification](WorkOrderSpecification.md) |  |  no  |
| [Control](Control.md) |  |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md), [WorkOrderSpecification](WorkOrderSpecification.md), [Control](Control.md), [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:title |
| native | jumo:title |




## LinkML Source

<details>
```yaml
name: title
domain_of:
- DocumentFrontMatter
- WorkOrderSpecification
- Control
- ApiProblem
range: string

```
</details></div>