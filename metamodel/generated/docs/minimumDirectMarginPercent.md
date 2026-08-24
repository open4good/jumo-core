---
search:
  boost: 5.0
---

# Slot: minimumDirectMarginPercent

<div data-search-exclude markdown="1">



URI: [jumo:minimumDirectMarginPercent](https://jumo.dev/schemas/jumo-v1/minimumDirectMarginPercent)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingValidation](OfferingValidation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [OfferingValidation](OfferingValidation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `60` |
| Owner | [OfferingValidation](OfferingValidation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumDirectMarginPercent |
| native | jumo:minimumDirectMarginPercent |




## LinkML Source

<details>
```yaml
name: minimumDirectMarginPercent
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '60'
owner: OfferingValidation
domain_of:
- OfferingValidation
range: integer
required: true

```
</details></div>