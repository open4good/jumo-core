---
search:
  boost: 5.0
---

# Slot: grantedAt

<div data-search-exclude markdown="1">



URI: [jumo:grantedAt](https://jumo.dev/schemas/jumo-v1/grantedAt)
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
| Required | Yes |
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
| self | jumo:grantedAt |
| native | jumo:grantedAt |




## LinkML Source

<details>
```yaml
name: grantedAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellLease
domain_of:
- ExecutionCellLease
range: string
required: true

```
</details></div>