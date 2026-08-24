---
search:
  boost: 5.0
---

# Slot: superseded_by

<div data-search-exclude markdown="1">



URI: [jumo:superseded_by](https://jumo.dev/schemas/jumo-v1/superseded_by)
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
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DocumentFrontMatter](DocumentFrontMatter.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^ADR-[0-9]{4}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:superseded_by |
| native | jumo:superseded_by |




## LinkML Source

<details>
```yaml
name: superseded_by
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: string
multivalued: true
pattern: ^ADR-[0-9]{4}$

```
</details></div>