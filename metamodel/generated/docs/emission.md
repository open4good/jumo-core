---
search:
  boost: 5.0
---

# Slot: emission

<div data-search-exclude markdown="1">



URI: [jumo:emission](https://jumo.dev/schemas/jumo-v1/emission)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |
| [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) | One ordered document of an atomic same-repository bundle |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md), [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:emission |
| native | jumo:emission |




## LinkML Source

<details>
```yaml
name: emission
domain_of:
- AssistedJourneySpec
- AssistedJourneyEmissionBundleItem
range: string

```
</details></div>