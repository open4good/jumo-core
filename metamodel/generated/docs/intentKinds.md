---
search:
  boost: 5.0
---

# Slot: intentKinds

<div data-search-exclude markdown="1">



URI: [jumo:intentKinds](https://jumo.dev/schemas/jumo-v1/intentKinds)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DispositionMatch](DispositionMatch.md) | minProperties:1 in the source (at least one match field present) moves to Reg... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [IntentKind](IntentKind.md) |
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
| self | jumo:intentKinds |
| native | jumo:intentKinds |




## LinkML Source

<details>
```yaml
name: intentKinds
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DispositionMatch
domain_of:
- DispositionMatch
range: IntentKind
multivalued: true

```
</details></div>