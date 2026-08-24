---
search:
  boost: 5.0
---

# Slot: audience

<div data-search-exclude markdown="1">



URI: [jumo:audience](https://jumo.dev/schemas/jumo-v1/audience)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |
| [OfferingSpecBody](OfferingSpecBody.md) |  |  no  |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  |  no  |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |  no  |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |
| [ApiSurfaceSpec](ApiSurfaceSpec.md) | Specification of an ApiSurface contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md), [OfferingSpecBody](OfferingSpecBody.md), [SelfDescriptionAnswer](SelfDescriptionAnswer.md), [Surface](Surface.md), [ApiOperation](ApiOperation.md), [ApiSurfaceSpec](ApiSurfaceSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:audience |
| native | jumo:audience |




## LinkML Source

<details>
```yaml
name: audience
domain_of:
- DocumentFrontMatter
- OfferingSpecBody
- SelfDescriptionAnswer
- Surface
- ApiOperation
- ApiSurfaceSpec
range: string

```
</details></div>