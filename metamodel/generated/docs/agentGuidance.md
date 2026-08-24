---
search:
  boost: 5.0
---

# Slot: agentGuidance


_When to reach for this operation and when not to, written for the choosing agent._



<div data-search-exclude markdown="1">



URI: [jumo:agentGuidance](https://jumo.dev/schemas/jumo-v1/agentGuidance)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [McpBundleOperation](McpBundleOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [McpBundleOperation](McpBundleOperation.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{10,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:agentGuidance |
| native | jumo:agentGuidance |




## LinkML Source

<details>
```yaml
name: agentGuidance
description: When to reach for this operation and when not to, written for the choosing
  agent.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleOperation
domain_of:
- McpBundleOperation
range: string
pattern: ^.{10,}$

```
</details></div>