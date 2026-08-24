---
search:
  boost: 5.0
---

# Slot: mountedPersonalSpaceRefs


_PersonalSpace documents mounted into this cell's private workspace filesystem. Each referenced PersonalSpace must belong to the same Realm as this cell (Rego, corpus.cell.workspace-realm-scoped) -- private documents never mount into another tenant's dedicated Execution Cell._



<div data-search-exclude markdown="1">



URI: [jumo:mountedPersonalSpaceRefs](https://jumo.dev/schemas/jumo-v1/mountedPersonalSpaceRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [ExecutionCellSpec](ExecutionCellSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:mountedPersonalSpaceRefs |
| native | jumo:mountedPersonalSpaceRefs |




## LinkML Source

<details>
```yaml
name: mountedPersonalSpaceRefs
description: PersonalSpace documents mounted into this cell's private workspace filesystem.
  Each referenced PersonalSpace must belong to the same Realm as this cell (Rego,
  corpus.cell.workspace-realm-scoped) -- private documents never mount into another
  tenant's dedicated Execution Cell.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ExecutionCellSpec
domain_of:
- ExecutionCellSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>