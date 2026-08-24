---
search:
  boost: 5.0
---

# Slot: delegatedSecretBindings

<div data-search-exclude markdown="1">



URI: [jumo:delegatedSecretBindings](https://jumo.dev/schemas/jumo-v1/delegatedSecretBindings)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ExecutionCellLease](ExecutionCellLease.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ExecutionCellLease](ExecutionCellLease.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:delegatedSecretBindings |
| native | jumo:delegatedSecretBindings |




## LinkML Source

<details>
```yaml
name: delegatedSecretBindings
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellLease
domain_of:
- ExecutionCellLease
range: string
multivalued: true

```
</details></div>