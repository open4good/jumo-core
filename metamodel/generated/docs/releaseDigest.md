---
search:
  boost: 5.0
---

# Slot: releaseDigest

<div data-search-exclude markdown="1">



URI: [jumo:releaseDigest](https://jumo.dev/schemas/jumo-v1/releaseDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| self | jumo:releaseDigest |
| native | jumo:releaseDigest |




## LinkML Source

<details>
```yaml
name: releaseDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: MachineRuntimeInstallation
domain_of:
- MachineRuntimeInstallation
range: string
required: true

```
</details></div>