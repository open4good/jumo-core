---
search:
  boost: 5.0
---

# Slot: identity

<div data-search-exclude markdown="1">



URI: [jumo:identity](https://jumo.dev/schemas/jumo-v1/identity)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ExecutionCellIdentity](ExecutionCellIdentity.md) |
| Domain Of | [ExecutionCellSpec](ExecutionCellSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionCellSpec](ExecutionCellSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:identity |
| native | jumo:identity |




## LinkML Source

<details>
```yaml
name: identity
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellSpec
domain_of:
- ExecutionCellSpec
range: ExecutionCellIdentity
required: true
inlined: true

```
</details></div>