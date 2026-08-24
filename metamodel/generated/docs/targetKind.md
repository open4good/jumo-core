---
search:
  boost: 5.0
---

# Slot: targetKind


_The contract kind the emitted document declares. Must name a declared kind (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:targetKind](https://jumo.dev/schemas/jumo-v1/targetKind)
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
| self | jumo:targetKind |
| native | jumo:targetKind |




## LinkML Source

<details>
```yaml
name: targetKind
description: The contract kind the emitted document declares. Must name a declared
  kind (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: string
required: true

```
</details></div>