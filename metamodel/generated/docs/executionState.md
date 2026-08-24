---
search:
  boost: 5.0
---

# Slot: executionState

<div data-search-exclude markdown="1">



URI: [jumo:executionState](https://jumo.dev/schemas/jumo-v1/executionState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProjectStateAuthority](ProjectStateAuthority.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ExecutionStateStore](ExecutionStateStore.md) |
| Domain Of | [ProjectStateAuthority](ProjectStateAuthority.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProjectStateAuthority](ProjectStateAuthority.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:executionState |
| native | jumo:executionState |




## LinkML Source

<details>
```yaml
name: executionState
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProjectStateAuthority
domain_of:
- ProjectStateAuthority
range: ExecutionStateStore
required: true

```
</details></div>