---
search:
  boost: 5.0
---

# Slot: minimumTermMonths

<div data-search-exclude markdown="1">



URI: [jumo:minimumTermMonths](https://jumo.dev/schemas/jumo-v1/minimumTermMonths)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPricing](OfferingPricing.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [OfferingPricing](OfferingPricing.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `0` |
| Owner | [OfferingPricing](OfferingPricing.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumTermMonths |
| native | jumo:minimumTermMonths |




## LinkML Source

<details>
```yaml
name: minimumTermMonths
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '0'
owner: OfferingPricing
domain_of:
- OfferingPricing
range: integer
required: true

```
</details></div>