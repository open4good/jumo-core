---
search:
  boost: 5.0
---

# Slot: booleanFields


_Field names whose collected "true"/"false" string is coerced to a real YAML boolean before rendering. The platform compensates here rather than in the renderer: the generic step form has no boolean-aware widget yet (projection-field-options-resolution), so a BOOLEAN_FLAG-shaped value still arrives as free text._



<div data-search-exclude markdown="1">



URI: [jumo:booleanFields](https://jumo.dev/schemas/jumo-v1/booleanFields)
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
| self | jumo:booleanFields |
| native | jumo:booleanFields |




## LinkML Source

<details>
```yaml
name: booleanFields
description: 'Field names whose collected "true"/"false" string is coerced to a real
  YAML boolean before rendering. The platform compensates here rather than in the
  renderer: the generic step form has no boolean-aware widget yet (projection-field-options-resolution),
  so a BOOLEAN_FLAG-shaped value still arrives as free text.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: string
multivalued: true

```
</details></div>