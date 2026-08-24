---
search:
  boost: 5.0
---

# Slot: hostname

<div data-search-exclude markdown="1">



URI: [jumo:hostname](https://jumo.dev/schemas/jumo-v1/hostname)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingTopology](OfferingTopology.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [HostnameInclusion](HostnameInclusion.md) |
| Domain Of | [OfferingTopology](OfferingTopology.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `INCLUDED` |
| Owner | [OfferingTopology](OfferingTopology.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:hostname |
| native | jumo:hostname |




## LinkML Source

<details>
```yaml
name: hostname
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: INCLUDED
owner: OfferingTopology
domain_of:
- OfferingTopology
range: HostnameInclusion
required: true

```
</details></div>