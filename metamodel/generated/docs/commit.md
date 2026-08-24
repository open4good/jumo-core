---
search:
  boost: 5.0
---

# Slot: commit

<div data-search-exclude markdown="1">



URI: [jumo:commit](https://jumo.dev/schemas/jumo-v1/commit)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitReference](KitReference.md) |  |  no  |
| [KitLockSpec](KitLockSpec.md) |  |  no  |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitReference](KitReference.md), [KitLockSpec](KitLockSpec.md), [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:commit |
| native | jumo:commit |




## LinkML Source

<details>
```yaml
name: commit
domain_of:
- KitReference
- KitLockSpec
- KitReleaseCertificationSpec
range: string

```
</details></div>