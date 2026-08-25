---
search:
  boost: 5.0
---

# Slot: ansibleBaselineRef


_No confirmed Git-contract target kind exists for this field yet (ADR-0045 migration audit, contract-reference-migration-execution AC1) -- left as an opaque scalar pending an owner decision on what a machine's Ansible baseline should resolve to._



<div data-search-exclude markdown="1">



URI: [jumo:ansibleBaselineRef](https://jumo.dev/schemas/jumo-v1/ansibleBaselineRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ExecutionMachineSpec](ExecutionMachineSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:ansibleBaselineRef |
| native | jumo:ansibleBaselineRef |




## LinkML Source

<details>
```yaml
name: ansibleBaselineRef
description: No confirmed Git-contract target kind exists for this field yet (ADR-0045
  migration audit, contract-reference-migration-execution AC1) -- left as an opaque
  scalar pending an owner decision on what a machine's Ansible baseline should resolve
  to.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionMachineSpec
domain_of:
- ExecutionMachineSpec
range: string

```
</details></div>