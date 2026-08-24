---
search:
  boost: 5.0
---

# Slot: ambientToolAuthority


_No CLI home, image, plugin, repository file, or provider default silently grants tool access._



<div data-search-exclude markdown="1">



URI: [jumo:ambientToolAuthority](https://jumo.dev/schemas/jumo-v1/ambientToolAuthority)
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
**Must Equal:** `DISABLED`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ambientToolAuthority |
| native | jumo:ambientToolAuthority |




## LinkML Source

<details>
```yaml
name: ambientToolAuthority
description: No CLI home, image, plugin, repository file, or provider default silently
  grants tool access.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerSubstrateSpec
domain_of:
- WorkerSubstrateSpec
range: string
required: true
equals_string: DISABLED

```
</details></div>