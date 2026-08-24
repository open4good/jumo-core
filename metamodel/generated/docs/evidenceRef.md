---
search:
  boost: 5.0
---

# Slot: evidenceRef

<div data-search-exclude markdown="1">



URI: [jumo:evidenceRef](https://jumo.dev/schemas/jumo-v1/evidenceRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |
| [ImprovementObservation](ImprovementObservation.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmEnforcement](RealmEnforcement.md), [ImprovementObservation](ImprovementObservation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:evidenceRef |
| native | jumo:evidenceRef |




## LinkML Source

<details>
```yaml
name: evidenceRef
domain_of:
- RealmEnforcement
- ImprovementObservation
range: string

```
</details></div>