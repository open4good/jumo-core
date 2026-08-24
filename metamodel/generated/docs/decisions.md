---
search:
  boost: 5.0
---

# Slot: decisions


_Canonical decision numbers (docs/00-canonical-decisions.md) this ADR backs._



<div data-search-exclude markdown="1">



URI: [jumo:decisions](https://jumo.dev/schemas/jumo-v1/decisions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DocumentFrontMatter](DocumentFrontMatter.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:decisions |
| native | jumo:decisions |




## LinkML Source

<details>
```yaml
name: decisions
description: Canonical decision numbers (docs/00-canonical-decisions.md) this ADR
  backs.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: integer
multivalued: true

```
</details></div>