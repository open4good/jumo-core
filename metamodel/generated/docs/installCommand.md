---
search:
  boost: 5.0
---

# Slot: installCommand

<div data-search-exclude markdown="1">



URI: [jumo:installCommand](https://jumo.dev/schemas/jumo-v1/installCommand)
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
| self | jumo:installCommand |
| native | jumo:installCommand |




## LinkML Source

<details>
```yaml
name: installCommand
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliAdapterProfile
domain_of:
- CliAdapterProfile
range: string

```
</details></div>