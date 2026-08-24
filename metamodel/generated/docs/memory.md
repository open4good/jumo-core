---
search:
  boost: 5.0
---

# Slot: memory

<div data-search-exclude markdown="1">



URI: [jumo:memory](https://jumo.dev/schemas/jumo-v1/memory)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerIsolationLimits](WorkerIsolationLimits.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkerIsolationLimits](WorkerIsolationLimits.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerIsolationLimits](WorkerIsolationLimits.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[1-9][0-9]*(Mi|Gi)$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:memory |
| native | jumo:memory |




## LinkML Source

<details>
```yaml
name: memory
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerIsolationLimits
domain_of:
- WorkerIsolationLimits
range: string
required: true
pattern: ^[1-9][0-9]*(Mi|Gi)$

```
</details></div>