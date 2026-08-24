---
search:
  boost: 5.0
---

# Slot: journeyId

<div data-search-exclude markdown="1">



URI: [jumo:journeyId](https://jumo.dev/schemas/jumo-v1/journeyId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^[a-z][a-z0-9-]*$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:journeyId |
| native | jumo:journeyId |




## LinkML Source

<details>
```yaml
name: journeyId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: string
required: true
pattern: ^[a-z][a-z0-9-]*$

```
</details></div>