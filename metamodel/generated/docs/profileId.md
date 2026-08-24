---
search:
  boost: 5.0
---

# Slot: profileId

<div data-search-exclude markdown="1">



URI: [jumo:profileId](https://jumo.dev/schemas/jumo-v1/profileId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliAdapterProfile](CliAdapterProfile.md) | Adapter execution profile and command template for a CLI worker runtime |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliAdapterProfile](CliAdapterProfile.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:profileId |
| native | jumo:profileId |




## LinkML Source

<details>
```yaml
name: profileId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliAdapterProfile
domain_of:
- CliAdapterProfile
range: string
required: true

```
</details></div>