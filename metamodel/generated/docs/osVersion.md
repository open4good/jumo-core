---
search:
  boost: 5.0
---

# Slot: osVersion

<div data-search-exclude markdown="1">



URI: [jumo:osVersion](https://jumo.dev/schemas/jumo-v1/osVersion)
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
| self | jumo:osVersion |
| native | jumo:osVersion |




## LinkML Source

<details>
```yaml
name: osVersion
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineInventoryObservation
domain_of:
- MachineInventoryObservation
range: string

```
</details></div>