---
search:
  boost: 5.0
---

# Slot: activity

<div data-search-exclude markdown="1">



URI: [jumo:activity](https://jumo.dev/schemas/jumo-v1/activity)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessingRegisterEntry](ProcessingRegisterEntry.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{5,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:activity |
| native | jumo:activity |




## LinkML Source

<details>
```yaml
name: activity
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessingRegisterEntry
domain_of:
- ProcessingRegisterEntry
range: string
required: true
pattern: ^.{5,}$

```
</details></div>