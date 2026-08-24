---
search:
  boost: 5.0
---

# Slot: pluralEn

<div data-search-exclude markdown="1">



URI: [jumo:pluralEn](https://jumo.dev/schemas/jumo-v1/pluralEn)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [VocabularyEntry](VocabularyEntry.md) | One CONTRACT kind's names |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [VocabularyEntry](VocabularyEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [VocabularyEntry](VocabularyEntry.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:pluralEn |
| native | jumo:pluralEn |




## LinkML Source

<details>
```yaml
name: pluralEn
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: VocabularyEntry
domain_of:
- VocabularyEntry
range: string
required: true
pattern: ^.{1,}$

```
</details></div>