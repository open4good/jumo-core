---
search:
  boost: 5.0
---

# Slot: keycloak

<div data-search-exclude markdown="1">



URI: [jumo:keycloak](https://jumo.dev/schemas/jumo-v1/keycloak)
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
| If Absent | `SHARED` |
| Owner | [OfferingTopology](OfferingTopology.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:keycloak |
| native | jumo:keycloak |




## LinkML Source

<details>
```yaml
name: keycloak
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: SHARED
owner: OfferingTopology
domain_of:
- OfferingTopology
range: TopologyPlacement
required: true

```
</details></div>