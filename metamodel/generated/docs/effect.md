---
search:
  boost: 5.0
---

# Slot: effect

<div data-search-exclude markdown="1">



URI: [jumo:effect](https://jumo.dev/schemas/jumo-v1/effect)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |  no  |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicyRule](PolicyRule.md), [McpBundleOperation](McpBundleOperation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:effect |
| native | jumo:effect |




## LinkML Source

<details>
```yaml
name: effect
domain_of:
- PolicyRule
- McpBundleOperation
range: string

```
</details></div>