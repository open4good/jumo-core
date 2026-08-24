---
search:
  boost: 5.0
---

# Slot: systemInventory

<div data-search-exclude markdown="1">



URI: [jumo:systemInventory](https://jumo.dev/schemas/jumo-v1/systemInventory)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineEnrollmentRequest](MachineEnrollmentRequest.md) | BYOVM one-shot machine enrollment request carrying CSR and system inventory |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [MachineInventoryObservation](MachineInventoryObservation.md) |
| Domain Of | [MachineEnrollmentRequest](MachineEnrollmentRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineEnrollmentRequest](MachineEnrollmentRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:systemInventory |
| native | jumo:systemInventory |




## LinkML Source

<details>
```yaml
name: systemInventory
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineEnrollmentRequest
domain_of:
- MachineEnrollmentRequest
range: MachineInventoryObservation
inlined: true

```
</details></div>