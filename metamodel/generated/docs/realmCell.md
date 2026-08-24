---
search:
  boost: 5.0
---

# Slot: realmCell

<div data-search-exclude markdown="1">



URI: [jumo:realmCell](https://jumo.dev/schemas/jumo-v1/realmCell)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingTopology](OfferingTopology.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [TopologyPlacement](TopologyPlacement.md) |
| Domain Of | [OfferingTopology](OfferingTopology.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `DEDICATED` |
| Owner | [OfferingTopology](OfferingTopology.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:realmCell |
| native | jumo:realmCell |




## LinkML Source

<details>
```yaml
name: realmCell
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: DEDICATED
owner: OfferingTopology
domain_of:
- OfferingTopology
range: TopologyPlacement
required: true

```
</details></div>