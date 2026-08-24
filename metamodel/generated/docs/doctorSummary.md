---
search:
  boost: 5.0
---

# Slot: doctorSummary

<div data-search-exclude markdown="1">



URI: [jumo:doctorSummary](https://jumo.dev/schemas/jumo-v1/doctorSummary)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInstallationObservation](CliInstallationObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:doctorSummary |
| native | jumo:doctorSummary |




## LinkML Source

<details>
```yaml
name: doctorSummary
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInstallationObservation
domain_of:
- CliInstallationObservation
range: string

```
</details></div>