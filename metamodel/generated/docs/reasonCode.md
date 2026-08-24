---
search:
  boost: 5.0
---

# Slot: reasonCode

<div data-search-exclude markdown="1">



URI: [jumo:reasonCode](https://jumo.dev/schemas/jumo-v1/reasonCode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |  no  |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicyRule](PolicyRule.md), [RoutingDecision](RoutingDecision.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:reasonCode |
| native | jumo:reasonCode |




## LinkML Source

<details>
```yaml
name: reasonCode
domain_of:
- PolicyRule
- RoutingDecision
range: string

```
</details></div>