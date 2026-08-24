---
search:
  boost: 5.0
---

# Slot: requestsPerMonth

<div data-search-exclude markdown="1">



URI: [jumo:requestsPerMonth](https://jumo.dev/schemas/jumo-v1/requestsPerMonth)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSupport](OfferingSupport.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [OfferingSupport](OfferingSupport.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `2` |
| Owner | [OfferingSupport](OfferingSupport.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requestsPerMonth |
| native | jumo:requestsPerMonth |




## LinkML Source

<details>
```yaml
name: requestsPerMonth
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '2'
owner: OfferingSupport
domain_of:
- OfferingSupport
range: integer
required: true

```
</details></div>