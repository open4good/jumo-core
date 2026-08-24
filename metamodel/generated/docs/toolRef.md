---
search:
  boost: 5.0
---

# Slot: toolRef

<div data-search-exclude markdown="1">



URI: [jumo:toolRef](https://jumo.dev/schemas/jumo-v1/toolRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |  no  |
| [CliInstallationDesiredState](CliInstallationDesiredState.md) | Desired CLI installation state on a specific machine |  no  |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |
| [CliUsageObservation](CliUsageObservation.md) | Observed consumption metrics from CLI tool invocations |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliReleaseSpec](CliReleaseSpec.md), [CliInstallationDesiredState](CliInstallationDesiredState.md), [CliInstallationObservation](CliInstallationObservation.md), [CliInvocationRequest](CliInvocationRequest.md), [CliUsageObservation](CliUsageObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:toolRef |
| native | jumo:toolRef |




## LinkML Source

<details>
```yaml
name: toolRef
domain_of:
- CliReleaseSpec
- CliInstallationDesiredState
- CliInstallationObservation
- CliInvocationRequest
- CliUsageObservation
range: string

```
</details></div>