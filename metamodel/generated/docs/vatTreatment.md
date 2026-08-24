---
search:
  boost: 5.0
---

# Slot: vatTreatment

<div data-search-exclude markdown="1">



URI: [jumo:vatTreatment](https://jumo.dev/schemas/jumo-v1/vatTreatment)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPricing](OfferingPricing.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [VatTreatment](VatTreatment.md) |
| Domain Of | [OfferingPricing](OfferingPricing.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `EX_VAT` |
| Owner | [OfferingPricing](OfferingPricing.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:vatTreatment |
| native | jumo:vatTreatment |




## LinkML Source

<details>
```yaml
name: vatTreatment
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: EX_VAT
owner: OfferingPricing
domain_of:
- OfferingPricing
range: VatTreatment
required: true

```
</details></div>