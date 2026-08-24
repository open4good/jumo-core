---
search:
  boost: 5.0
---

# Slot: fromField

<div data-search-exclude markdown="1">



URI: [jumo:fromField](https://jumo.dev/schemas/jumo-v1/fromField)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) | How the emitted document's identifier is derived from the run, always by slug... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:fromField |
| native | jumo:fromField |




## LinkML Source

<details>
```yaml
name: fromField
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmittedIdentifier
domain_of:
- AssistedJourneyEmittedIdentifier
range: string
required: true

```
</details></div>