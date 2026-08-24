---
search:
  boost: 5.0
---

# Slot: callsCount

<div data-search-exclude markdown="1">



URI: [jumo:callsCount](https://jumo.dev/schemas/jumo-v1/callsCount)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliUsageObservation](CliUsageObservation.md) | Observed consumption metrics from CLI tool invocations |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [CliUsageObservation](CliUsageObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliUsageObservation](CliUsageObservation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:callsCount |
| native | jumo:callsCount |




## LinkML Source

<details>
```yaml
name: callsCount
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliUsageObservation
domain_of:
- CliUsageObservation
range: integer

```
</details></div>