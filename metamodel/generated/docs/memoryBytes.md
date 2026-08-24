---
search:
  boost: 5.0
---

# Slot: memoryBytes

<div data-search-exclude markdown="1">



URI: [jumo:memoryBytes](https://jumo.dev/schemas/jumo-v1/memoryBytes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) | Specification for a MachineHostDefinition contract |  no  |
| [MachineInventoryObservation](MachineInventoryObservation.md) | Observed hardware and OS characteristics of an enrolled machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md), [MachineInventoryObservation](MachineInventoryObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:memoryBytes |
| native | jumo:memoryBytes |




## LinkML Source

<details>
```yaml
name: memoryBytes
domain_of:
- MachineHostDefinitionSpec
- MachineInventoryObservation
range: string

```
</details></div>