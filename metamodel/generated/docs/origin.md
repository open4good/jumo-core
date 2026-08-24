---
search:
  boost: 5.0
---

# Slot: origin

<div data-search-exclude markdown="1">



URI: [jumo:origin](https://jumo.dev/schemas/jumo-v1/origin)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [MachineOrigin](MachineOrigin.md) |
| Domain Of | [ExecutionMachineSpec](ExecutionMachineSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionMachineSpec](ExecutionMachineSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:origin |
| native | jumo:origin |




## LinkML Source

<details>
```yaml
name: origin
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionMachineSpec
domain_of:
- ExecutionMachineSpec
range: MachineOrigin
required: true

```
</details></div>