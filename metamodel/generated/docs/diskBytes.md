---
search:
  boost: 5.0
---

# Slot: diskBytes

<div data-search-exclude markdown="1">



URI: [jumo:diskBytes](https://jumo.dev/schemas/jumo-v1/diskBytes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineInventoryObservation](MachineInventoryObservation.md) | Observed hardware and OS characteristics of an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
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
| self | jumo:diskBytes |
| native | jumo:diskBytes |




## LinkML Source

<details>
```yaml
name: diskBytes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineInventoryObservation
domain_of:
- MachineInventoryObservation
range: integer

```
</details></div>