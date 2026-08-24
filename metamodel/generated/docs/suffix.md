---
search:
  boost: 5.0
---

# Slot: suffix

<div data-search-exclude markdown="1">



URI: [jumo:suffix](https://jumo.dev/schemas/jumo-v1/suffix)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) | How the emitted document's identifier is derived from the run, always by slug... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyIdentifierSuffix](AssistedJourneyIdentifierSuffix.md) |
| Domain Of | [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `NONE` |
| Owner | [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:suffix |
| native | jumo:suffix |




## LinkML Source

<details>
```yaml
name: suffix
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: NONE
owner: AssistedJourneyEmittedIdentifier
domain_of:
- AssistedJourneyEmittedIdentifier
range: AssistedJourneyIdentifierSuffix

```
</details></div>