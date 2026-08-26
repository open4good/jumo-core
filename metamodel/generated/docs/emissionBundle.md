---
search:
  boost: 5.0
---

# Slot: emissionBundle


_The atomic same-repository alternative to emission: an ordered list of documents one run writes together, each reusing AssistedJourneyEmission unchanged and optionally fanning out over a collected collection field or gated by an equality condition. Runtime path resolution and atomic intake are a later lot; this vocabulary only._



<div data-search-exclude markdown="1">



URI: [jumo:emissionBundle](https://jumo.dev/schemas/jumo-v1/emissionBundle)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:emissionBundle |
| native | jumo:emissionBundle |




## LinkML Source

<details>
```yaml
name: emissionBundle
description: 'The atomic same-repository alternative to emission: an ordered list
  of documents one run writes together, each reusing AssistedJourneyEmission unchanged
  and optionally fanning out over a collected collection field or gated by an equality
  condition. Runtime path resolution and atomic intake are a later lot; this vocabulary
  only.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: AssistedJourneyEmissionBundleItem
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>