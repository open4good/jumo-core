---
search:
  boost: 5.0
---

# Slot: killSwitchRef


_Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-0056 decision 4)._



<div data-search-exclude markdown="1">



URI: [jumo:killSwitchRef](https://jumo.dev/schemas/jumo-v1/killSwitchRef)
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
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:killSwitchRef |
| native | jumo:killSwitchRef |




## LinkML Source

<details>
```yaml
name: killSwitchRef
description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
  (ADR-0056 decision 4).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleOperation
domain_of:
- McpBundleOperation
range: string
pattern: ^.{3,}$

```
</details></div>