---
search:
  boost: 5.0
---

# Slot: guidedMinutes

<div data-search-exclude markdown="1">



URI: [jumo:guidedMinutes](https://jumo.dev/schemas/jumo-v1/guidedMinutes)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingOnboarding](OfferingOnboarding.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [OfferingOnboarding](OfferingOnboarding.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `30` |
| Owner | [OfferingOnboarding](OfferingOnboarding.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:guidedMinutes |
| native | jumo:guidedMinutes |




## LinkML Source

<details>
```yaml
name: guidedMinutes
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '30'
owner: OfferingOnboarding
domain_of:
- OfferingOnboarding
range: integer
required: true

```
</details></div>