---
search:
  boost: 5.0
---

# Slot: taskClass

<div data-search-exclude markdown="1">



URI: [jumo:taskClass](https://jumo.dev/schemas/jumo-v1/taskClass)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [GoldenTaskCase](GoldenTaskCase.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [TaskClass](TaskClass.md) |
| Domain Of | [GoldenTaskCase](GoldenTaskCase.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [GoldenTaskCase](GoldenTaskCase.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:taskClass |
| native | jumo:taskClass |




## LinkML Source

<details>
```yaml
name: taskClass
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: GoldenTaskCase
domain_of:
- GoldenTaskCase
range: TaskClass
required: true

```
</details></div>