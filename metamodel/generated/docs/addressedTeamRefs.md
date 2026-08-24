---
search:
  boost: 5.0
---

# Slot: addressedTeamRefs

<div data-search-exclude markdown="1">



URI: [jumo:addressedTeamRefs](https://jumo.dev/schemas/jumo-v1/addressedTeamRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DispositionMatch](DispositionMatch.md) | minProperties:1 in the source (at least one match field present) moves to Reg... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [DispositionMatch](DispositionMatch.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DispositionMatch](DispositionMatch.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:addressedTeamRefs |
| native | jumo:addressedTeamRefs |




## LinkML Source

<details>
```yaml
name: addressedTeamRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DispositionMatch
domain_of:
- DispositionMatch
range: Identifier
multivalued: true

```
</details></div>