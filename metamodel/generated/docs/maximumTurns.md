---
search:
  boost: 5.0
---

# Slot: maximumTurns

<div data-search-exclude markdown="1">



URI: [jumo:maximumTurns](https://jumo.dev/schemas/jumo-v1/maximumTurns)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ClarificationPolicy](ClarificationPolicy.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ClarificationPolicy](ClarificationPolicy.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ClarificationPolicy](ClarificationPolicy.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |
| Maximum Value | 10 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumTurns |
| native | jumo:maximumTurns |




## LinkML Source

<details>
```yaml
name: maximumTurns
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ClarificationPolicy
domain_of:
- ClarificationPolicy
range: integer
required: true
minimum_value: 1
maximum_value: 10

```
</details></div>