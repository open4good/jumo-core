---
search:
  boost: 5.0
---

# Slot: setupFeeExVatEur

<div data-search-exclude markdown="1">



URI: [jumo:setupFeeExVatEur](https://jumo.dev/schemas/jumo-v1/setupFeeExVatEur)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPricing](OfferingPricing.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [OfferingPricing](OfferingPricing.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `99` |
| Owner | [OfferingPricing](OfferingPricing.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:setupFeeExVatEur |
| native | jumo:setupFeeExVatEur |




## LinkML Source

<details>
```yaml
name: setupFeeExVatEur
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '99'
owner: OfferingPricing
domain_of:
- OfferingPricing
range: float
required: true

```
</details></div>