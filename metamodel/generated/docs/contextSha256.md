---
search:
  boost: 5.0
---

# Slot: contextSha256

<div data-search-exclude markdown="1">



URI: [jumo:contextSha256](https://jumo.dev/schemas/jumo-v1/contextSha256)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkerInvocation](WorkerInvocation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerInvocation](WorkerInvocation.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:contextSha256 |
| native | jumo:contextSha256 |




## LinkML Source

<details>
```yaml
name: contextSha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerInvocation
domain_of:
- WorkerInvocation
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>