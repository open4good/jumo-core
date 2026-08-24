---
search:
  boost: 5.0
---

# Slot: diskUsagePercent

<div data-search-exclude markdown="1">



URI: [jumo:diskUsagePercent](https://jumo.dev/schemas/jumo-v1/diskUsagePercent)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineHealthObservation](MachineHealthObservation.md) | Observed real-time health and load status of an execution machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [MachineHealthObservation](MachineHealthObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineHealthObservation](MachineHealthObservation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:diskUsagePercent |
| native | jumo:diskUsagePercent |




## LinkML Source

<details>
```yaml
name: diskUsagePercent
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineHealthObservation
domain_of:
- MachineHealthObservation
range: float

```
</details></div>