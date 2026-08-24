---
search:
  boost: 5.0
---

# Slot: normative


_Whether this document states rules. Travels with every chunk: a retriever may quote a false document as explanation and never as authority (ADR-0005 applied to retrieval)._



<div data-search-exclude markdown="1">



URI: [jumo:normative](https://jumo.dev/schemas/jumo-v1/normative)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:normative |
| native | jumo:normative |




## LinkML Source

<details>
```yaml
name: normative
description: 'Whether this document states rules. Travels with every chunk: a retriever
  may quote a false document as explanation and never as authority (ADR-0005 applied
  to retrieval).'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: boolean
required: true

```
</details></div>