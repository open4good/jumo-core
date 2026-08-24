---
search:
  boost: 5.0
---

# Slot: referenceChecks


_Checks that a collected value names a contract that exists, so a journey never proposes a document pointing at nothing._



<div data-search-exclude markdown="1">



URI: [jumo:referenceChecks](https://jumo.dev/schemas/jumo-v1/referenceChecks)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyReferenceCheck](AssistedJourneyReferenceCheck.md) |
| Domain Of | [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmission](AssistedJourneyEmission.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:referenceChecks |
| native | jumo:referenceChecks |




## LinkML Source

<details>
```yaml
name: referenceChecks
description: Checks that a collected value names a contract that exists, so a journey
  never proposes a document pointing at nothing.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyReferenceCheck
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>