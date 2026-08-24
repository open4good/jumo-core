---
search:
  boost: 5.0
---

# Slot: question

<div data-search-exclude markdown="1">



URI: [jumo:question](https://jumo.dev/schemas/jumo-v1/question)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SelfDescriptionQuestion](SelfDescriptionQuestion.md) |
| Domain Of | [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:question |
| native | jumo:question |




## LinkML Source

<details>
```yaml
name: question
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelfDescriptionAnswer
domain_of:
- SelfDescriptionAnswer
range: SelfDescriptionQuestion
required: true

```
</details></div>