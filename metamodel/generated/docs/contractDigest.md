---
search:
  boost: 5.0
---

# Slot: contractDigest

<div data-search-exclude markdown="1">



URI: [jumo:contractDigest](https://jumo.dev/schemas/jumo-v1/contractDigest)
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
| self | jumo:contractDigest |
| native | jumo:contractDigest |




## LinkML Source

<details>
```yaml
name: contractDigest
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellLease
domain_of:
- ExecutionCellLease
range: string
required: true

```
</details></div>