---
search:
  boost: 5.0
---

# Slot: minimumReliability

<div data-search-exclude markdown="1">



URI: [jumo:minimumReliability](https://jumo.dev/schemas/jumo-v1/minimumReliability)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerQualityRequirement](WorkerQualityRequirement.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [WorkerQualityRequirement](WorkerQualityRequirement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerQualityRequirement](WorkerQualityRequirement.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 0 |
| Maximum Value | 1 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumReliability |
| native | jumo:minimumReliability |




## LinkML Source

<details>
```yaml
name: minimumReliability
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerQualityRequirement
domain_of:
- WorkerQualityRequirement
range: float
required: true
minimum_value: 0
maximum_value: 1

```
</details></div>