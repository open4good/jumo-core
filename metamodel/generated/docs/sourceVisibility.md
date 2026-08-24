---
search:
  boost: 5.0
---

# Slot: sourceVisibility

<div data-search-exclude markdown="1">



URI: [jumo:sourceVisibility](https://jumo.dev/schemas/jumo-v1/sourceVisibility)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SourceVisibility](SourceVisibility.md) |
| Domain Of | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `SOURCE_VISIBLE` |
| Owner | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sourceVisibility |
| native | jumo:sourceVisibility |




## LinkML Source

<details>
```yaml
name: sourceVisibility
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: SOURCE_VISIBLE
owner: OfferingPremiumKitTerms
domain_of:
- OfferingPremiumKitTerms
range: SourceVisibility
required: true

```
</details></div>