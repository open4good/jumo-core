---
search:
  boost: 5.0
---

# Slot: directory

<div data-search-exclude markdown="1">



URI: [jumo:directory](https://jumo.dev/schemas/jumo-v1/directory)
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
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [VocabularyEntry](VocabularyEntry.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9-]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:directory |
| native | jumo:directory |




## LinkML Source

<details>
```yaml
name: directory
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: VocabularyEntry
domain_of:
- VocabularyEntry
range: string
pattern: ^[a-z][a-z0-9-]*$

```
</details></div>