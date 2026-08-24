---
search:
  boost: 5.0
---

# Slot: when


_Named structural condition evaluated by the policy engine. Free text is not permitted at evaluation time._



<div data-search-exclude markdown="1">



URI: [jumo:when](https://jumo.dev/schemas/jumo-v1/when)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PolicyRule](PolicyRule.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PolicyRule](PolicyRule.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:when |
| native | jumo:when |




## LinkML Source

<details>
```yaml
name: when
description: Named structural condition evaluated by the policy engine. Free text
  is not permitted at evaluation time.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PolicyRule
domain_of:
- PolicyRule
range: string

```
</details></div>