---
search:
  boost: 5.0
---

# Slot: enforced_by


_Comma-separated paths that mechanically enforce this document's rules. Checked for existence by scripts/check-corpus-budget.py._



<div data-search-exclude markdown="1">



URI: [jumo:enforced_by](https://jumo.dev/schemas/jumo-v1/enforced_by)
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
| Owner | [DocumentFrontMatter](DocumentFrontMatter.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:enforced_by |
| native | jumo:enforced_by |




## LinkML Source

<details>
```yaml
name: enforced_by
description: Comma-separated paths that mechanically enforce this document's rules.
  Checked for existence by scripts/check-corpus-budget.py.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: string
pattern: ^.{3,}$

```
</details></div>