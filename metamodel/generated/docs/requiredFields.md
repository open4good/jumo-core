---
search:
  boost: 5.0
---

# Slot: requiredFields

<div data-search-exclude markdown="1">



URI: [jumo:requiredFields](https://jumo.dev/schemas/jumo-v1/requiredFields)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyStep](AssistedJourneyStep.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyStep](AssistedJourneyStep.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requiredFields |
| native | jumo:requiredFields |




## LinkML Source

<details>
```yaml
name: requiredFields
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyStep
domain_of:
- AssistedJourneyStep
range: string
multivalued: true

```
</details></div>