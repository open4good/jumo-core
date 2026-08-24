---
search:
  boost: 5.0
---

# Slot: pricing

<div data-search-exclude markdown="1">



URI: [jumo:pricing](https://jumo.dev/schemas/jumo-v1/pricing)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [OfferingPricing](OfferingPricing.md) |
| Domain Of | [OfferingSpecBody](OfferingSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OfferingSpecBody](OfferingSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:pricing |
| native | jumo:pricing |




## LinkML Source

<details>
```yaml
name: pricing
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OfferingSpecBody
domain_of:
- OfferingSpecBody
range: OfferingPricing
required: true
inlined: true

```
</details></div>