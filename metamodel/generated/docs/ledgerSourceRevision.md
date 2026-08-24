---
search:
  boost: 5.0
---

# Slot: ledgerSourceRevision


_Commit that carried the last full (pre-compaction) revision of this record, for a COMPLETED WorkOrder compacted into .jumo/work/ledger/. Set by scripts/migrate/compact-completed-work.py, never by hand._



<div data-search-exclude markdown="1">



URI: [jumo:ledgerSourceRevision](https://jumo.dev/schemas/jumo-v1/ledgerSourceRevision)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkOrderSpec](WorkOrderSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkOrderSpec](WorkOrderSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{7,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ledgerSourceRevision |
| native | jumo:ledgerSourceRevision |




## LinkML Source

<details>
```yaml
name: ledgerSourceRevision
description: Commit that carried the last full (pre-compaction) revision of this record,
  for a COMPLETED WorkOrder compacted into .jumo/work/ledger/. Set by scripts/migrate/compact-completed-work.py,
  never by hand.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkOrderSpec
domain_of:
- WorkOrderSpec
range: string
pattern: ^.{7,}$

```
</details></div>