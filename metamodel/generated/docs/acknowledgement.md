---
search:
  boost: 5.0
---

# Slot: acknowledgement

<div data-search-exclude markdown="1">



URI: [jumo:acknowledgement](https://jumo.dev/schemas/jumo-v1/acknowledgement)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AcknowledgementPolicy](AcknowledgementPolicy.md) |
| Domain Of | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:acknowledgement |
| native | jumo:acknowledgement |




## LinkML Source

<details>
```yaml
name: acknowledgement
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ChiefOfStaffProfileSpec
domain_of:
- ChiefOfStaffProfileSpec
range: AcknowledgementPolicy
required: true
inlined: true

```
</details></div>