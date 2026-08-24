---
search:
  boost: 5.0
---

# Slot: maximumCostClass

<div data-search-exclude markdown="1">



URI: [jumo:maximumCostClass](https://jumo.dev/schemas/jumo-v1/maximumCostClass)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerLimits](WorkerLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CostClass](CostClass.md) |
| Domain Of | [WorkerLimits](WorkerLimits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerLimits](WorkerLimits.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumCostClass |
| native | jumo:maximumCostClass |




## LinkML Source

<details>
```yaml
name: maximumCostClass
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerLimits
domain_of:
- WorkerLimits
range: CostClass
required: true

```
</details></div>