---
search:
  boost: 5.0
---

# Slot: navigationMode


_FREE permits navigation among dependency-ready steps; dependencies remain mandatory server-side._



<div data-search-exclude markdown="1">



URI: [jumo:navigationMode](https://jumo.dev/schemas/jumo-v1/navigationMode)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyNavigationMode](AssistedJourneyNavigationMode.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `SEQUENTIAL` |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:navigationMode |
| native | jumo:navigationMode |




## LinkML Source

<details>
```yaml
name: navigationMode
description: FREE permits navigation among dependency-ready steps; dependencies remain
  mandatory server-side.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: SEQUENTIAL
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: AssistedJourneyNavigationMode

```
</details></div>