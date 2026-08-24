---
search:
  boost: 5.0
---

# Slot: billingCadence

<div data-search-exclude markdown="1">



URI: [jumo:billingCadence](https://jumo.dev/schemas/jumo-v1/billingCadence)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPricing](OfferingPricing.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [BillingCadence](BillingCadence.md) |
| Domain Of | [OfferingPricing](OfferingPricing.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `MONTHLY` |
| Owner | [OfferingPricing](OfferingPricing.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:billingCadence |
| native | jumo:billingCadence |




## LinkML Source

<details>
```yaml
name: billingCadence
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: MONTHLY
owner: OfferingPricing
domain_of:
- OfferingPricing
range: BillingCadence
required: true

```
</details></div>