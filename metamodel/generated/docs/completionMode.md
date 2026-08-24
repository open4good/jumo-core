---
search:
  boost: 5.0
---

# Slot: completionMode

<div data-search-exclude markdown="1">



URI: [jumo:completionMode](https://jumo.dev/schemas/jumo-v1/completionMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyCompletionMode](AssistedJourneyCompletionMode.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `PROPOSAL` |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:completionMode |
| native | jumo:completionMode |




## LinkML Source

<details>
```yaml
name: completionMode
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: PROPOSAL
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: AssistedJourneyCompletionMode

```
</details></div>