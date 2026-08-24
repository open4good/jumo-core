---
search:
  boost: 5.0
---

# Slot: forbidden

<div data-search-exclude markdown="1">



URI: [jumo:forbidden](https://jumo.dev/schemas/jumo-v1/forbidden)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SolicitationContractSpec](SolicitationContractSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ForbiddenSolicitationReach](ForbiddenSolicitationReach.md) |
| Domain Of | [SolicitationContractSpec](SolicitationContractSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SolicitationContractSpec](SolicitationContractSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:forbidden |
| native | jumo:forbidden |




## LinkML Source

<details>
```yaml
name: forbidden
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SolicitationContractSpec
domain_of:
- SolicitationContractSpec
range: ForbiddenSolicitationReach
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>