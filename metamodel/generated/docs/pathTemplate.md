---
search:
  boost: 5.0
---

# Slot: pathTemplate


_Where the document is written, with ${id} standing for the resolved identifier, e.g. `.jumo/teams/${id}.yml`._



<div data-search-exclude markdown="1">



URI: [jumo:pathTemplate](https://jumo.dev/schemas/jumo-v1/pathTemplate)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyEmission](AssistedJourneyEmission.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:pathTemplate |
| native | jumo:pathTemplate |




## LinkML Source

<details>
```yaml
name: pathTemplate
description: Where the document is written, with ${id} standing for the resolved identifier,
  e.g. `.jumo/teams/${id}.yml`.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: string
required: true

```
</details></div>