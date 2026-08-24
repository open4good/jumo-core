---
search:
  boost: 5.0
---

# Slot: instruction

<div data-search-exclude markdown="1">



URI: [jumo:instruction](https://jumo.dev/schemas/jumo-v1/instruction)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [GoldenTaskCase](GoldenTaskCase.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [GoldenTaskCase](GoldenTaskCase.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [GoldenTaskCase](GoldenTaskCase.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{20,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:instruction |
| native | jumo:instruction |




## LinkML Source

<details>
```yaml
name: instruction
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: GoldenTaskCase
domain_of:
- GoldenTaskCase
range: string
required: true
pattern: ^.{20,}$

```
</details></div>