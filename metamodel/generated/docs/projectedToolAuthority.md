---
search:
  boost: 5.0
---

# Slot: projectedToolAuthority


_Tool capabilities are dynamically projected by the Jumo capability gateway via an invocation-scoped Streamable HTTP MCP endpoint based on explicit InvocationCapabilityGrants._



<div data-search-exclude markdown="1">



URI: [jumo:projectedToolAuthority](https://jumo.dev/schemas/jumo-v1/projectedToolAuthority)
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
**Must Equal:** `GRANT_ONLY`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:projectedToolAuthority |
| native | jumo:projectedToolAuthority |




## LinkML Source

<details>
```yaml
name: projectedToolAuthority
description: Tool capabilities are dynamically projected by the Jumo capability gateway
  via an invocation-scoped Streamable HTTP MCP endpoint based on explicit InvocationCapabilityGrants.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerSubstrateSpec
domain_of:
- WorkerSubstrateSpec
range: string
required: true
equals_string: GRANT_ONLY

```
</details></div>