---
search:
  boost: 5.0
---

# Slot: minimumTokens

<div data-search-exclude markdown="1">



URI: [jumo:minimumTokens](https://jumo.dev/schemas/jumo-v1/minimumTokens)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerContextRequirement](WorkerContextRequirement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [WorkerContextRequirement](WorkerContextRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerContextRequirement](WorkerContextRequirement.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1024 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumTokens |
| native | jumo:minimumTokens |




## LinkML Source

<details>
```yaml
name: minimumTokens
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerContextRequirement
domain_of:
- WorkerContextRequirement
range: integer
required: true
minimum_value: 1024

```
</details></div>