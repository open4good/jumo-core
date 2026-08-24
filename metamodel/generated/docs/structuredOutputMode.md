---
search:
  boost: 5.0
---

# Slot: structuredOutputMode

<div data-search-exclude markdown="1">



URI: [jumo:structuredOutputMode](https://jumo.dev/schemas/jumo-v1/structuredOutputMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliAdapterProfile](CliAdapterProfile.md) | Adapter execution profile and command template for a CLI worker runtime |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [StructuredOutputMode](StructuredOutputMode.md) |
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
| self | jumo:structuredOutputMode |
| native | jumo:structuredOutputMode |




## LinkML Source

<details>
```yaml
name: structuredOutputMode
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliAdapterProfile
domain_of:
- CliAdapterProfile
range: StructuredOutputMode
required: true

```
</details></div>