---
search:
  boost: 5.0
---

# Slot: label

<div data-search-exclude markdown="1">



URI: [jumo:label](https://jumo.dev/schemas/jumo-v1/label)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionDecisionOption](AttentionDecisionOption.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionDecisionOption](AttentionDecisionOption.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionDecisionOption](AttentionDecisionOption.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:label |
| native | jumo:label |




## LinkML Source

<details>
```yaml
name: label
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionDecisionOption
domain_of:
- AttentionDecisionOption
range: string
required: true
pattern: ^.{1,}$

```
</details></div>