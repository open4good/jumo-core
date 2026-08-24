---
search:
  boost: 5.0
---

# Slot: match

<div data-search-exclude markdown="1">



URI: [jumo:match](https://jumo.dev/schemas/jumo-v1/match)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DispositionRule](DispositionRule.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [DispositionMatch](DispositionMatch.md) |
| Domain Of | [DispositionRule](DispositionRule.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DispositionRule](DispositionRule.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:match |
| native | jumo:match |




## LinkML Source

<details>
```yaml
name: match
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DispositionRule
domain_of:
- DispositionRule
range: DispositionMatch
required: true
inlined: true

```
</details></div>