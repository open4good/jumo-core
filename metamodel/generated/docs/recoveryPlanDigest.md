---
search:
  boost: 5.0
---

# Slot: recoveryPlanDigest


_Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-0056 decision 3)._



<div data-search-exclude markdown="1">



URI: [jumo:recoveryPlanDigest](https://jumo.dev/schemas/jumo-v1/recoveryPlanDigest)
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
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:recoveryPlanDigest |
| native | jumo:recoveryPlanDigest |




## LinkML Source

<details>
```yaml
name: recoveryPlanDigest
description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
  (ADR-0056 decision 3).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: McpBundleOperation
domain_of:
- McpBundleOperation
range: string
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>