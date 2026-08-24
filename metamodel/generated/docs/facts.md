---
search:
  boost: 5.0
---

# Slot: facts

<div data-search-exclude markdown="1">



URI: [jumo:facts](https://jumo.dev/schemas/jumo-v1/facts)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SelfDescriptionFact](SelfDescriptionFact.md) |
| Domain Of | [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:facts |
| native | jumo:facts |




## LinkML Source

<details>
```yaml
name: facts
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SelfDescriptionAnswer
domain_of:
- SelfDescriptionAnswer
range: SelfDescriptionFact
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>