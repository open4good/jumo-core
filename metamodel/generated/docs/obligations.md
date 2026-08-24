---
search:
  boost: 5.0
---

# Slot: obligations

<div data-search-exclude markdown="1">



URI: [jumo:obligations](https://jumo.dev/schemas/jumo-v1/obligations)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |  no  |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |  no  |
| [PolicyInput](PolicyInput.md) | Typed input structure evaluated by OPA policies |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicyRule](PolicyRule.md), [ApiOperation](ApiOperation.md), [PolicyInput](PolicyInput.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:obligations |
| native | jumo:obligations |




## LinkML Source

<details>
```yaml
name: obligations
domain_of:
- PolicyRule
- ApiOperation
- PolicyInput
range: string

```
</details></div>