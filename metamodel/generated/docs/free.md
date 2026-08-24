---
search:
  boost: 5.0
---

# Slot: free

<div data-search-exclude markdown="1">



URI: [jumo:free](https://jumo.dev/schemas/jumo-v1/free)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingExport](OfferingExport.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [OfferingExport](OfferingExport.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [OfferingExport](OfferingExport.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:free |
| native | jumo:free |




## LinkML Source

<details>
```yaml
name: free
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: OfferingExport
domain_of:
- OfferingExport
range: boolean
required: true

```
</details></div>