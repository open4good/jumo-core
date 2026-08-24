---
search:
  boost: 5.0
---

# Slot: entries

<div data-search-exclude markdown="1">



URI: [jumo:entries](https://jumo.dev/schemas/jumo-v1/entries)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [VocabularySetSpec](VocabularySetSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [VocabularyEntry](VocabularyEntry.md) |
| Domain Of | [VocabularySetSpec](VocabularySetSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [VocabularySetSpec](VocabularySetSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:entries |
| native | jumo:entries |




## LinkML Source

<details>
```yaml
name: entries
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: VocabularySetSpec
domain_of:
- VocabularySetSpec
range: VocabularyEntry
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>