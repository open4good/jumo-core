---
search:
  boost: 5.0
---

# Slot: cpus

<div data-search-exclude markdown="1">



URI: [jumo:cpus](https://jumo.dev/schemas/jumo-v1/cpus)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerIsolationLimits](WorkerIsolationLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [WorkerIsolationLimits](WorkerIsolationLimits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerIsolationLimits](WorkerIsolationLimits.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:cpus |
| native | jumo:cpus |




## LinkML Source

<details>
```yaml
name: cpus
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolationLimits
domain_of:
- WorkerIsolationLimits
range: float
required: true

```
</details></div>