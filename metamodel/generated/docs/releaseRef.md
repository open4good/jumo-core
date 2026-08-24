---
search:
  boost: 5.0
---

# Slot: releaseRef

<div data-search-exclude markdown="1">



URI: [jumo:releaseRef](https://jumo.dev/schemas/jumo-v1/releaseRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInstallationDesiredState](CliInstallationDesiredState.md) | Desired CLI installation state on a specific machine |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInstallationDesiredState](CliInstallationDesiredState.md), [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:releaseRef |
| native | jumo:releaseRef |




## LinkML Source

<details>
```yaml
name: releaseRef
domain_of:
- CliInstallationDesiredState
- CliInvocationRequest
range: string

```
</details></div>