---
search:
  boost: 5.0
---

# Slot: providerMarkupPercent

<div data-search-exclude markdown="1">



URI: [jumo:providerMarkupPercent](https://jumo.dev/schemas/jumo-v1/providerMarkupPercent)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingOverage](OfferingOverage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Float](Float.md) |
| Domain Of | [OfferingOverage](OfferingOverage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `20` |
| Owner | [OfferingOverage](OfferingOverage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:providerMarkupPercent |
| native | jumo:providerMarkupPercent |




## LinkML Source

<details>
```yaml
name: providerMarkupPercent
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '20'
owner: OfferingOverage
domain_of:
- OfferingOverage
range: float
required: true

```
</details></div>