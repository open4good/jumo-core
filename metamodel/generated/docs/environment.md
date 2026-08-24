---
search:
  boost: 5.0
---

# Slot: environment

<div data-search-exclude markdown="1">



URI: [jumo:environment](https://jumo.dev/schemas/jumo-v1/environment)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [MachineEnvironment](MachineEnvironment.md) |
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
| self | jumo:environment |
| native | jumo:environment |




## LinkML Source

<details>
```yaml
name: environment
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionMachineSpec
domain_of:
- ExecutionMachineSpec
range: MachineEnvironment
required: true

```
</details></div>