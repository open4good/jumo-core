---
search:
  boost: 5.0
---

# Slot: decisionRef

<div data-search-exclude markdown="1">



URI: [jumo:decisionRef](https://jumo.dev/schemas/jumo-v1/decisionRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AttentionItemSpec](AttentionItemSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionItemSpec](AttentionItemSpec.md) |


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
| self | jumo:decisionRef |
| native | jumo:decisionRef |




## LinkML Source

<details>
```yaml
name: decisionRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionItemSpec
domain_of:
- AttentionItemSpec
range: string
pattern: ^.{1,}$

```
</details></div>