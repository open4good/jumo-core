---
search:
  boost: 5.0
---

# Slot: sla

<div data-search-exclude markdown="1">



URI: [jumo:sla](https://jumo.dev/schemas/jumo-v1/sla)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSupport](OfferingSupport.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SlaTier](SlaTier.md) |
| Domain Of | [OfferingSupport](OfferingSupport.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `NONE` |
| Owner | [OfferingSupport](OfferingSupport.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sla |
| native | jumo:sla |




## LinkML Source

<details>
```yaml
name: sla
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: NONE
owner: OfferingSupport
domain_of:
- OfferingSupport
range: SlaTier
required: true

```
</details></div>