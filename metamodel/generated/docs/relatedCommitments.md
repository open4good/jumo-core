---
search:
  boost: 5.0
---

# Slot: relatedCommitments

<div data-search-exclude markdown="1">



URI: [jumo:relatedCommitments](https://jumo.dev/schemas/jumo-v1/relatedCommitments)
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
| Multivalued | Yes |
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
| self | jumo:relatedCommitments |
| native | jumo:relatedCommitments |




## LinkML Source

<details>
```yaml
name: relatedCommitments
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AttentionItemSpec
domain_of:
- AttentionItemSpec
range: string
multivalued: true
pattern: ^.{1,}$

```
</details></div>