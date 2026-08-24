---
search:
  boost: 5.0
---

# Slot: systemLoad

<div data-search-exclude markdown="1">



URI: [jumo:systemLoad](https://jumo.dev/schemas/jumo-v1/systemLoad)
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
| self | jumo:systemLoad |
| native | jumo:systemLoad |




## LinkML Source

<details>
```yaml
name: systemLoad
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineHealthObservation
domain_of:
- MachineHealthObservation
range: float

```
</details></div>