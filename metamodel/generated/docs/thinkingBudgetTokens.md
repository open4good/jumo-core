---
search:
  boost: 5.0
---

# Slot: thinkingBudgetTokens


_Native thinking-token budget for a protocol that exposes one (Anthropic extended thinking, Google thinkingConfig)._



<div data-search-exclude markdown="1">



URI: [jumo:thinkingBudgetTokens](https://jumo.dev/schemas/jumo-v1/thinkingBudgetTokens)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProviderNativeEffort](ProviderNativeEffort.md) | Provider-native reasoning-effort parameters, applied verbatim by RequestShape... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [ProviderNativeEffort](ProviderNativeEffort.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProviderNativeEffort](ProviderNativeEffort.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 1 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:thinkingBudgetTokens |
| native | jumo:thinkingBudgetTokens |




## LinkML Source

<details>
```yaml
name: thinkingBudgetTokens
description: Native thinking-token budget for a protocol that exposes one (Anthropic
  extended thinking, Google thinkingConfig).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProviderNativeEffort
domain_of:
- ProviderNativeEffort
range: integer
minimum_value: 1

```
</details></div>