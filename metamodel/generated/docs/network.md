---
search:
  boost: 5.0
---

# Slot: network

<div data-search-exclude markdown="1">



URI: [jumo:network](https://jumo.dev/schemas/jumo-v1/network)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |
| [WorkerIsolation](WorkerIsolation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ExecutionMachineSpec](ExecutionMachineSpec.md), [WorkerIsolation](WorkerIsolation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:network |
| native | jumo:network |




## LinkML Source

<details>
```yaml
name: network
domain_of:
- ExecutionMachineSpec
- WorkerIsolation
range: string

```
</details></div>