---
search:
  boost: 5.0
---

# Slot: urgency

<div data-search-exclude markdown="1">



URI: [jumo:urgency](https://jumo.dev/schemas/jumo-v1/urgency)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AttentionUrgency](AttentionUrgency.md) |
| Domain Of | [AttentionItemSpec](AttentionItemSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:urgency |
| native | jumo:urgency |




## LinkML Source

<details>
```yaml
name: urgency
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionItemSpec
domain_of:
- AttentionItemSpec
range: AttentionUrgency
required: true

```
</details></div>