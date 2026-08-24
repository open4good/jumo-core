---
search:
  boost: 5.0
---

# Slot: decisionOptions

<div data-search-exclude markdown="1">



URI: [jumo:decisionOptions](https://jumo.dev/schemas/jumo-v1/decisionOptions)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AttentionDecisionOption](AttentionDecisionOption.md) |
| Domain Of | [AttentionItemSpec](AttentionItemSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AttentionItemSpec](AttentionItemSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:decisionOptions |
| native | jumo:decisionOptions |




## LinkML Source

<details>
```yaml
name: decisionOptions
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionItemSpec
domain_of:
- AttentionItemSpec
range: AttentionDecisionOption
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>