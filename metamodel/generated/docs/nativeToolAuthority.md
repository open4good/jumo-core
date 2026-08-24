---
search:
  boost: 5.0
---

# Slot: nativeToolAuthority


_CLI-native connectors and MCP servers are disabled so the fact is reviewable rather than hidden in an image. Unaffected by AGENTS.md's development-agent MCP directives -- those govern a human's own terminal session, not a dispatched worker._



<div data-search-exclude markdown="1">



URI: [jumo:nativeToolAuthority](https://jumo.dev/schemas/jumo-v1/nativeToolAuthority)
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
| self | jumo:nativeToolAuthority |
| native | jumo:nativeToolAuthority |




## LinkML Source

<details>
```yaml
name: nativeToolAuthority
description: CLI-native connectors and MCP servers are disabled so the fact is reviewable
  rather than hidden in an image. Unaffected by AGENTS.md's development-agent MCP
  directives -- those govern a human's own terminal session, not a dispatched worker.
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