---
search:
  boost: 5.0
---

# Slot: lang


_ISO 639-1 code of the document's prose. Defaults to English; a non-normative document may declare fr for explanatory text (docs/concepts/positionnement-conceptuel.md)._



<div data-search-exclude markdown="1">



URI: [jumo:lang](https://jumo.dev/schemas/jumo-v1/lang)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `string(en)` |
| Owner | [DocumentFrontMatter](DocumentFrontMatter.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z]{2}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:lang |
| native | jumo:lang |




## LinkML Source

<details>
```yaml
name: lang
description: ISO 639-1 code of the document's prose. Defaults to English; a non-normative
  document may declare fr for explanatory text (docs/concepts/positionnement-conceptuel.md).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: string(en)
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: string
pattern: ^[a-z]{2}$

```
</details></div>