---
search:
  boost: 5.0
---

# Slot: pids

<div data-search-exclude markdown="1">



URI: [jumo:pids](https://jumo.dev/schemas/jumo-v1/pids)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerIsolationLimits](WorkerIsolationLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [WorkerIsolationLimits](WorkerIsolationLimits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerIsolationLimits](WorkerIsolationLimits.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |
| Maximum Value | 1024 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:pids |
| native | jumo:pids |




## LinkML Source

<details>
```yaml
name: pids
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolationLimits
domain_of:
- WorkerIsolationLimits
range: integer
required: true
minimum_value: 1
maximum_value: 1024

```
</details></div>