---
search:
  boost: 5.0
---

# Slot: sourceRef

<div data-search-exclude markdown="1">



URI: [jumo:sourceRef](https://jumo.dev/schemas/jumo-v1/sourceRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TermsReview](TermsReview.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [TermsReview](TermsReview.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [TermsReview](TermsReview.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sourceRef |
| native | jumo:sourceRef |




## LinkML Source

<details>
```yaml
name: sourceRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: TermsReview
domain_of:
- TermsReview
range: string
required: true
pattern: ^.{3,}$

```
</details></div>