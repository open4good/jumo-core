---
search:
  boost: 5.0
---

# Slot: defaultTimeoutSeconds

<div data-search-exclude markdown="1">



URI: [jumo:defaultTimeoutSeconds](https://jumo.dev/schemas/jumo-v1/defaultTimeoutSeconds)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliAdapterProfile](CliAdapterProfile.md) | Adapter execution profile and command template for a CLI worker runtime |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [CliAdapterProfile](CliAdapterProfile.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliAdapterProfile](CliAdapterProfile.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:defaultTimeoutSeconds |
| native | jumo:defaultTimeoutSeconds |




## LinkML Source

<details>
```yaml
name: defaultTimeoutSeconds
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliAdapterProfile
domain_of:
- CliAdapterProfile
range: integer

```
</details></div>