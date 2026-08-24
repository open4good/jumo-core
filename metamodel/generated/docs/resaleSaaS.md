---
search:
  boost: 5.0
---

# Slot: resaleSaaS

<div data-search-exclude markdown="1">



URI: [jumo:resaleSaaS](https://jumo.dev/schemas/jumo-v1/resaleSaaS)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [RedistributionTerms](RedistributionTerms.md) |
| Domain Of | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `FORBIDDEN` |
| Owner | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:resaleSaaS |
| native | jumo:resaleSaaS |




## LinkML Source

<details>
```yaml
name: resaleSaaS
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: FORBIDDEN
owner: OfferingPremiumKitTerms
domain_of:
- OfferingPremiumKitTerms
range: RedistributionTerms
required: true

```
</details></div>