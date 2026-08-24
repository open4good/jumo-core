---
search:
  boost: 5.0
---

# Slot: agentVersion

<div data-search-exclude markdown="1">



URI: [jumo:agentVersion](https://jumo.dev/schemas/jumo-v1/agentVersion)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineInventoryObservation](MachineInventoryObservation.md) | Observed hardware and OS characteristics of an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineInventoryObservation](MachineInventoryObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineInventoryObservation](MachineInventoryObservation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:agentVersion |
| native | jumo:agentVersion |




## LinkML Source

<details>
```yaml
name: agentVersion
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineInventoryObservation
domain_of:
- MachineInventoryObservation
range: string

```
</details></div>