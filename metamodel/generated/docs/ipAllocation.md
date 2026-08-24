---
search:
  boost: 5.0
---

# Slot: ipAllocation

<div data-search-exclude markdown="1">



URI: [jumo:ipAllocation](https://jumo.dev/schemas/jumo-v1/ipAllocation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineNetworkConfig](MachineNetworkConfig.md) | Network configuration for an ExecutionMachine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineNetworkConfig](MachineNetworkConfig.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineNetworkConfig](MachineNetworkConfig.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ipAllocation |
| native | jumo:ipAllocation |




## LinkML Source

<details>
```yaml
name: ipAllocation
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineNetworkConfig
domain_of:
- MachineNetworkConfig
range: string

```
</details></div>