---
search:
  boost: 5.0
---

# Slot: machineRef

<div data-search-exclude markdown="1">



URI: [jumo:machineRef](https://jumo.dev/schemas/jumo-v1/machineRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInstallationDesiredState](CliInstallationDesiredState.md) | Desired CLI installation state on a specific machine |  no  |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInstallationDesiredState](CliInstallationDesiredState.md), [CliInstallationObservation](CliInstallationObservation.md), [CliInvocationRequest](CliInvocationRequest.md), [ConnectorSessionBinding](ConnectorSessionBinding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:machineRef |
| native | jumo:machineRef |




## LinkML Source

<details>
```yaml
name: machineRef
domain_of:
- CliInstallationDesiredState
- CliInstallationObservation
- CliInvocationRequest
- ConnectorSessionBinding
range: string

```
</details></div>