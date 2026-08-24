---
search:
  boost: 5.0
---

# Slot: stale_after

<div data-search-exclude markdown="1">



URI: [jumo:stale_after](https://jumo.dev/schemas/jumo-v1/stale_after)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:stale_after |
| native | jumo:stale_after |




## LinkML Source

<details>
```yaml
name: stale_after
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DocumentFrontMatter
domain_of:
- DocumentFrontMatter
range: Duration

```
</details></div>