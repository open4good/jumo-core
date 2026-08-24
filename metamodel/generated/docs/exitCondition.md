---
search:
  boost: 5.0
---

# Slot: exitCondition

<div data-search-exclude markdown="1">



URI: [jumo:exitCondition](https://jumo.dev/schemas/jumo-v1/exitCondition)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Milestone](Milestone.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Milestone](Milestone.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [Milestone](Milestone.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{10,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:exitCondition |
| native | jumo:exitCondition |




## LinkML Source

<details>
```yaml
name: exitCondition
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: Milestone
domain_of:
- Milestone
range: string
required: true
pattern: ^.{10,}$

```
</details></div>