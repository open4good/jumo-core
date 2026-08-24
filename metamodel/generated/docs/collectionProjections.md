---
search:
  boost: 5.0
---

# Slot: collectionProjections


_What a multivalued field contributes to the emitted document. A collected item may carry more than the contract needs, so the emitted item is a projection of it -- declared here rather than decided by the renderer, which is what keeps the emitted shape a contract fact._



<div data-search-exclude markdown="1">



URI: [jumo:collectionProjections](https://jumo.dev/schemas/jumo-v1/collectionProjections)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |
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
| self | jumo:collectionProjections |
| native | jumo:collectionProjections |




## LinkML Source

<details>
```yaml
name: collectionProjections
description: What a multivalued field contributes to the emitted document. A collected
  item may carry more than the contract needs, so the emitted item is a projection
  of it -- declared here rather than decided by the renderer, which is what keeps
  the emitted shape a contract fact.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmission
domain_of:
- AssistedJourneyEmission
range: AssistedJourneyCollectionProjection
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>