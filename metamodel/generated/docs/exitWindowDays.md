---
search:
  boost: 5.0
---

# Slot: exitWindowDays

<div data-search-exclude markdown="1">



URI: [jumo:exitWindowDays](https://jumo.dev/schemas/jumo-v1/exitWindowDays)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingExport](OfferingExport.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [OfferingExport](OfferingExport.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `30` |
| Owner | [OfferingExport](OfferingExport.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:exitWindowDays |
| native | jumo:exitWindowDays |




## LinkML Source

<details>
```yaml
name: exitWindowDays
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: '30'
owner: OfferingExport
domain_of:
- OfferingExport
range: integer
required: true

```
</details></div>