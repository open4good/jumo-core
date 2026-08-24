---
search:
  boost: 5.0
---

# Slot: topology

<div data-search-exclude markdown="1">



URI: [jumo:topology](https://jumo.dev/schemas/jumo-v1/topology)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [OfferingTopology](OfferingTopology.md) |
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
| self | jumo:topology |
| native | jumo:topology |




## LinkML Source

<details>
```yaml
name: topology
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OfferingSpecBody
domain_of:
- OfferingSpecBody
range: OfferingTopology
required: true
inlined: true

```
</details></div>