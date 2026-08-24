---
search:
  boost: 5.0
---

# Slot: reversible


_Whether the effect can be inspected, corrected and undone. Kept alongside the newer EffectRecoveryKind (core.yaml) rather than replaced -- this boolean is the coarse policy-facing gate (irreversible needs stronger obligations); EffectRecoveryKind is the finer-grained recovery mechanism used where a specific capability's recovery path is modeled._



<div data-search-exclude markdown="1">



URI: [jumo:reversible](https://jumo.dev/schemas/jumo-v1/reversible)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ActionCapability](ActionCapability.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [ActionCapability](ActionCapability.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ActionCapability](ActionCapability.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:reversible |
| native | jumo:reversible |




## LinkML Source

<details>
```yaml
name: reversible
description: Whether the effect can be inspected, corrected and undone. Kept alongside
  the newer EffectRecoveryKind (core.yaml) rather than replaced -- this boolean is
  the coarse policy-facing gate (irreversible needs stronger obligations); EffectRecoveryKind
  is the finer-grained recovery mechanism used where a specific capability's recovery
  path is modeled.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ActionCapability
domain_of:
- ActionCapability
range: boolean
required: true

```
</details></div>