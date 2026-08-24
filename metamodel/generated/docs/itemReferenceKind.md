---
search:
  boost: 5.0
---

# Slot: itemReferenceKind


_When the collected item is a plain reference id rather than an object (an ENTITY_COLLECTION field submits ids), the declared contract kind it names. Must be a declared kind (Rego). The resolved document supplies each declared key not already carried by the submission itself -- keys read spec.<key>, falling back to metadata.name -- so the emitted item never trusts a client-submitted facet the contract can resolve authoritatively instead._



<div data-search-exclude markdown="1">



URI: [jumo:itemReferenceKind](https://jumo.dev/schemas/jumo-v1/itemReferenceKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:itemReferenceKind |
| native | jumo:itemReferenceKind |




## LinkML Source

<details>
```yaml
name: itemReferenceKind
description: When the collected item is a plain reference id rather than an object
  (an ENTITY_COLLECTION field submits ids), the declared contract kind it names. Must
  be a declared kind (Rego). The resolved document supplies each declared key not
  already carried by the submission itself -- keys read spec.<key>, falling back to
  metadata.name -- so the emitted item never trusts a client-submitted facet the contract
  can resolve authoritatively instead.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyCollectionProjection
domain_of:
- AssistedJourneyCollectionProjection
range: string

```
</details></div>