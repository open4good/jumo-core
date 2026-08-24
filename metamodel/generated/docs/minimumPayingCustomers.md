---
search:
  boost: 5.0
---

# Slot: minimumPayingCustomers

<div data-search-exclude markdown="1">



URI: [jumo:minimumPayingCustomers](https://jumo.dev/schemas/jumo-v1/minimumPayingCustomers)
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
| If Absent | `5` |
| Owner | [OfferingValidation](OfferingValidation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumPayingCustomers |
| native | jumo:minimumPayingCustomers |




## LinkML Source

<details>
```yaml
name: minimumPayingCustomers
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '5'
owner: OfferingValidation
domain_of:
- OfferingValidation
range: integer
required: true

```
</details></div>