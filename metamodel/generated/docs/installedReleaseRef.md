---
search:
  boost: 5.0
---

# Slot: installedReleaseRef

<div data-search-exclude markdown="1">



URI: [jumo:installedReleaseRef](https://jumo.dev/schemas/jumo-v1/installedReleaseRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [CliInstallationObservation](CliInstallationObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliInstallationObservation](CliInstallationObservation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:installedReleaseRef |
| native | jumo:installedReleaseRef |




## LinkML Source

<details>
```yaml
name: installedReleaseRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInstallationObservation
domain_of:
- CliInstallationObservation
range: ContractReference
required: true
inlined: true

```
</details></div>