---
search:
  boost: 5.0
---

# Slot: supportRequireSubscription

<div data-search-exclude markdown="1">



URI: [jumo:supportRequireSubscription](https://jumo.dev/schemas/jumo-v1/supportRequireSubscription)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:supportRequireSubscription |
| native | jumo:supportRequireSubscription |




## LinkML Source

<details>
```yaml
name: supportRequireSubscription
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: OfferingPremiumKitTerms
domain_of:
- OfferingPremiumKitTerms
range: boolean
required: true

```
</details></div>