---
search:
  boost: 5.0
---

# Slot: reviewedAt

<div data-search-exclude markdown="1">



URI: [jumo:reviewedAt](https://jumo.dev/schemas/jumo-v1/reviewedAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [TermsReview](TermsReview.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Date](Date.md) |
| Domain Of | [TermsReview](TermsReview.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [TermsReview](TermsReview.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:reviewedAt |
| native | jumo:reviewedAt |




## LinkML Source

<details>
```yaml
name: reviewedAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: TermsReview
domain_of:
- TermsReview
range: date
required: true

```
</details></div>