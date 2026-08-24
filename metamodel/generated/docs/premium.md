---
search:
  boost: 5.0
---

# Slot: premium

<div data-search-exclude markdown="1">



URI: [jumo:premium](https://jumo.dev/schemas/jumo-v1/premium)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingKits](OfferingKits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |
| Domain Of | [OfferingKits](OfferingKits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OfferingKits](OfferingKits.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:premium |
| native | jumo:premium |




## LinkML Source

<details>
```yaml
name: premium
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OfferingKits
domain_of:
- OfferingKits
range: OfferingPremiumKitTerms
required: true
inlined: true

```
</details></div>