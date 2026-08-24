---
search:
  boost: 5.0
---

# Slot: profileName

<div data-search-exclude markdown="1">



URI: [jumo:profileName](https://jumo.dev/schemas/jumo-v1/profileName)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CoordinationProfileSpec](CoordinationProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CoordinationProfileName](CoordinationProfileName.md) |
| Domain Of | [CoordinationProfileSpec](CoordinationProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CoordinationProfileSpec](CoordinationProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:profileName |
| native | jumo:profileName |




## LinkML Source

<details>
```yaml
name: profileName
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CoordinationProfileSpec
domain_of:
- CoordinationProfileSpec
range: CoordinationProfileName
required: true

```
</details></div>