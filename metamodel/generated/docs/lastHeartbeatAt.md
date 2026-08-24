---
search:
  boost: 5.0
---

# Slot: lastHeartbeatAt

<div data-search-exclude markdown="1">



URI: [jumo:lastHeartbeatAt](https://jumo.dev/schemas/jumo-v1/lastHeartbeatAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineHealthObservation](MachineHealthObservation.md) | Observed real-time health and load status of an execution machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineHealthObservation](MachineHealthObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:lastHeartbeatAt |
| native | jumo:lastHeartbeatAt |




## LinkML Source

<details>
```yaml
name: lastHeartbeatAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineHealthObservation
domain_of:
- MachineHealthObservation
range: string
required: true

```
</details></div>