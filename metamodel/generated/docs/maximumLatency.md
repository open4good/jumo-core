---
search:
  boost: 5.0
---

# Slot: maximumLatency

<div data-search-exclude markdown="1">



URI: [jumo:maximumLatency](https://jumo.dev/schemas/jumo-v1/maximumLatency)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerLimits](WorkerLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
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
| self | jumo:maximumLatency |
| native | jumo:maximumLatency |




## LinkML Source

<details>
```yaml
name: maximumLatency
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerLimits
domain_of:
- WorkerLimits
range: Duration
required: true

```
</details></div>