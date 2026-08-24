---
search:
  boost: 5.0
---

# Slot: independentVerification


_Optional, additive claim distinct from branchProtection. Not wired into whether the corpus.independence.* rules apply -- those keep running unconditionally regardless of this field. Only claiming ENFORCED here has any effect: it must then carry its own fresh independentVerificationObservedAt/independentVerificationEvidenceRef within independentVerificationEvidenceMaxAge (Rego), same evidence-costs-a-claim shape as branchProtection._



<div data-search-exclude markdown="1">



URI: [jumo:independentVerification](https://jumo.dev/schemas/jumo-v1/independentVerification)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [IndependentVerificationState](IndependentVerificationState.md) |
| Domain Of | [RealmEnforcement](RealmEnforcement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmEnforcement](RealmEnforcement.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:independentVerification |
| native | jumo:independentVerification |




## LinkML Source

<details>
```yaml
name: independentVerification
description: 'Optional, additive claim distinct from branchProtection. Not wired into
  whether the corpus.independence.* rules apply -- those keep running unconditionally
  regardless of this field. Only claiming ENFORCED here has any effect: it must then
  carry its own fresh independentVerificationObservedAt/independentVerificationEvidenceRef
  within independentVerificationEvidenceMaxAge (Rego), same evidence-costs-a-claim
  shape as branchProtection.'
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmEnforcement
domain_of:
- RealmEnforcement
range: IndependentVerificationState

```
</details></div>