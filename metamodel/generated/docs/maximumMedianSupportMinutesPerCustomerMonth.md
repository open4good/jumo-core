---
search:
  boost: 5.0
---

# Slot: maximumMedianSupportMinutesPerCustomerMonth

<div data-search-exclude markdown="1">



URI: [jumo:maximumMedianSupportMinutesPerCustomerMonth](https://jumo.dev/schemas/jumo-v1/maximumMedianSupportMinutesPerCustomerMonth)
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
| If Absent | `30` |
| Owner | [OfferingValidation](OfferingValidation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumMedianSupportMinutesPerCustomerMonth |
| native | jumo:maximumMedianSupportMinutesPerCustomerMonth |




## LinkML Source

<details>
```yaml
name: maximumMedianSupportMinutesPerCustomerMonth
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '30'
owner: OfferingValidation
domain_of:
- OfferingValidation
range: integer
required: true

```
</details></div>