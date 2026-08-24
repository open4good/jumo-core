---
search:
  boost: 5.0
---

# Slot: runtimeRef

<div data-search-exclude markdown="1">



URI: [jumo:runtimeRef](https://jumo.dev/schemas/jumo-v1/runtimeRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |  no  |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [MachineRuntimeInstallation](MachineRuntimeInstallation.md), [SecretBindingSpec](SecretBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:runtimeRef |
| native | jumo:runtimeRef |




## LinkML Source

<details>
```yaml
name: runtimeRef
domain_of:
- MachineRuntimeInstallation
- SecretBindingSpec
range: string

```
</details></div>