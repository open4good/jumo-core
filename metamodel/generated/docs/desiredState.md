---
search:
  boost: 5.0
---

# Slot: desiredState

<div data-search-exclude markdown="1">



URI: [jumo:desiredState](https://jumo.dev/schemas/jumo-v1/desiredState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectStateAuthority](ProjectStateAuthority.md) |  |  no  |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |
| [CliInstallationDesiredState](CliInstallationDesiredState.md) | Desired CLI installation state on a specific machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ProjectStateAuthority](ProjectStateAuthority.md), [ExecutionMachineSpec](ExecutionMachineSpec.md), [CliInstallationDesiredState](CliInstallationDesiredState.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:desiredState |
| native | jumo:desiredState |




## LinkML Source

<details>
```yaml
name: desiredState
domain_of:
- ProjectStateAuthority
- ExecutionMachineSpec
- CliInstallationDesiredState
range: string

```
</details></div>