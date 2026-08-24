---
search:
  boost: 5.0
---

# Slot: planDigest

<div data-search-exclude markdown="1">



URI: [jumo:planDigest](https://jumo.dev/schemas/jumo-v1/planDigest)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |  no  |
| [EffectTestAuthorization](EffectTestAuthorization.md) | Dual-consent authorization record for executing irreversible effect tests |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ConnectorTestPlan](ConnectorTestPlan.md), [EffectTestAuthorization](EffectTestAuthorization.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:planDigest |
| native | jumo:planDigest |




## LinkML Source

<details>
```yaml
name: planDigest
domain_of:
- ConnectorTestPlan
- EffectTestAuthorization
range: string

```
</details></div>