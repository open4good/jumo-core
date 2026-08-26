---
search:
  boost: 5.0
---

# Slot: fanOutCollection


_The collected multivalued field this item emits one document per item of. Identifiers, paths, validations and template values resolve in the current item's scope. Absent means the item emits at most once._



<div data-search-exclude markdown="1">



URI: [jumo:fanOutCollection](https://jumo.dev/schemas/jumo-v1/fanOutCollection)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) | One ordered document of an atomic same-repository bundle |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:fanOutCollection |
| native | jumo:fanOutCollection |




## LinkML Source

<details>
```yaml
name: fanOutCollection
description: The collected multivalued field this item emits one document per item
  of. Identifiers, paths, validations and template values resolve in the current item's
  scope. Absent means the item emits at most once.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AssistedJourneyEmissionBundleItem
domain_of:
- AssistedJourneyEmissionBundleItem
range: string

```
</details></div>