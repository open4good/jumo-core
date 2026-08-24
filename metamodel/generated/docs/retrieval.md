---
search:
  boost: 5.0
---

# Slot: retrieval

<div data-search-exclude markdown="1">



URI: [jumo:retrieval](https://jumo.dev/schemas/jumo-v1/retrieval)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DocumentRetrieval](DocumentRetrieval.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `SEMANTIC_SECTIONS` |
| Owner | [DocumentFrontMatter](DocumentFrontMatter.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:retrieval |
| native | jumo:retrieval |




## LinkML Source

<details>
```yaml
name: retrieval
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: SEMANTIC_SECTIONS
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: DocumentRetrieval

```
</details></div>