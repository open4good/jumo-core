---
search:
  boost: 5.0
---

# Slot: installationId

<div data-search-exclude markdown="1">



URI: [jumo:installationId](https://jumo.dev/schemas/jumo-v1/installationId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [MachineRuntimeInstallation](MachineRuntimeInstallation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [MachineRuntimeInstallation](MachineRuntimeInstallation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:installationId |
| native | jumo:installationId |




## LinkML Source

<details>
```yaml
name: installationId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineRuntimeInstallation
domain_of:
- MachineRuntimeInstallation
range: Identifier
required: true

```
</details></div>