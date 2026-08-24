---
search:
  boost: 5.0
---

# Slot: minimumRenewals

<div data-search-exclude markdown="1">



URI: [jumo:minimumRenewals](https://jumo.dev/schemas/jumo-v1/minimumRenewals)
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
| If Absent | `4` |
| Owner | [OfferingValidation](OfferingValidation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:minimumRenewals |
| native | jumo:minimumRenewals |




## LinkML Source

<details>
```yaml
name: minimumRenewals
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '4'
owner: OfferingValidation
domain_of:
- OfferingValidation
range: integer
required: true

```
</details></div>