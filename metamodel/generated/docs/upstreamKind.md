---
search:
  boost: 5.0
---

# Slot: upstreamKind


_Not schema-required -- the pinned jumo-core sibling source only gains this field at its own pace; enforced unconditionally in Rego instead (corpus.bundle.upstream-kind-required), which reads the live composed corpus rather than a stale lock._



<div data-search-exclude markdown="1">



URI: [jumo:upstreamKind](https://jumo.dev/schemas/jumo-v1/upstreamKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleRuntime](McpBundleRuntime.md) | An McpBundle's single upstream branch is always OCI_STDIO with a pinned artif... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpBundleRuntime](McpBundleRuntime.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpBundleRuntime](McpBundleRuntime.md) |


<details>
<summary>Additional Constraints</summary>
**Must Equal:** `OCI_STDIO`

</details>











## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:upstreamKind |
| native | jumo:upstreamKind |




## LinkML Source

<details>
```yaml
name: upstreamKind
description: Not schema-required -- the pinned jumo-core sibling source only gains
  this field at its own pace; enforced unconditionally in Rego instead (corpus.bundle.upstream-kind-required),
  which reads the live composed corpus rather than a stale lock.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleRuntime
domain_of:
- McpBundleRuntime
range: string
equals_string: OCI_STDIO

```
</details></div>