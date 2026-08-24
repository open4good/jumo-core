---
search:
  boost: 5.0
---

# Slot: intent

<div data-search-exclude markdown="1">



URI: [jumo:intent](https://jumo.dev/schemas/jumo-v1/intent)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CapabilityProfileSpec](CapabilityProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CapabilityProfileSpec](CapabilityProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CapabilityProfileSpec](CapabilityProfileSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{10,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:intent |
| native | jumo:intent |




## LinkML Source

<details>
```yaml
name: intent
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CapabilityProfileSpec
domain_of:
- CapabilityProfileSpec
range: string
required: true
pattern: ^.{10,}$

```
</details></div>