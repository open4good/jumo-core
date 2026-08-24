---
search:
  boost: 5.0
---

# Slot: homeState


_A mounted CLI home carries native connectors, consent history and trusted folders; isolated per-invocation state removes that duplicated authority._



<div data-search-exclude markdown="1">



URI: [jumo:homeState](https://jumo.dev/schemas/jumo-v1/homeState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `ISOLATED_PER_INVOCATION`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:homeState |
| native | jumo:homeState |




## LinkML Source

<details>
```yaml
name: homeState
description: A mounted CLI home carries native connectors, consent history and trusted
  folders; isolated per-invocation state removes that duplicated authority.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerSubstrateSpec
domain_of:
- WorkerSubstrateSpec
range: string
required: true
equals_string: ISOLATED_PER_INVOCATION

```
</details></div>