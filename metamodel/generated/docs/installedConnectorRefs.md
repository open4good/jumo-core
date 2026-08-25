---
search:
  boost: 5.0
---

# Slot: installedConnectorRefs

<div data-search-exclude markdown="1">



URI: [jumo:installedConnectorRefs](https://jumo.dev/schemas/jumo-v1/installedConnectorRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ExecutionMachineSpec](ExecutionMachineSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:installedConnectorRefs |
| native | jumo:installedConnectorRefs |




## LinkML Source

<details>
```yaml
name: installedConnectorRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionMachineSpec
domain_of:
- ExecutionMachineSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>