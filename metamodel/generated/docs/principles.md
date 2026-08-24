---
search:
  boost: 5.0
---

# Slot: principles

<div data-search-exclude markdown="1">



URI: [jumo:principles](https://jumo.dev/schemas/jumo-v1/principles)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipleSetSpec](PrincipleSetSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Principle](Principle.md) |
| Domain Of | [PrincipleSetSpec](PrincipleSetSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PrincipleSetSpec](PrincipleSetSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:principles |
| native | jumo:principles |




## LinkML Source

<details>
```yaml
name: principles
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PrincipleSetSpec
domain_of:
- PrincipleSetSpec
range: Principle
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>