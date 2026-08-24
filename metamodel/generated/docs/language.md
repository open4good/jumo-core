---
search:
  boost: 5.0
---

# Slot: language

<div data-search-exclude markdown="1">



URI: [jumo:language](https://jumo.dev/schemas/jumo-v1/language)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PreferencesSpec](PreferencesSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PreferencesSpec](PreferencesSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `en` |
| Owner | [PreferencesSpec](PreferencesSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:language |
| native | jumo:language |




## LinkML Source

<details>
```yaml
name: language
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: en
owner: PreferencesSpec
domain_of:
- PreferencesSpec
range: string

```
</details></div>