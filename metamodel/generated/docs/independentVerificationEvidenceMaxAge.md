---
search:
  boost: 5.0
---

# Slot: independentVerificationEvidenceMaxAge


_Maximum age of the independent-verification observation before its ENFORCED claim must be treated as stale, default PT24H._



<div data-search-exclude markdown="1">



URI: [jumo:independentVerificationEvidenceMaxAge](https://jumo.dev/schemas/jumo-v1/independentVerificationEvidenceMaxAge)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
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
| self | jumo:independentVerificationEvidenceMaxAge |
| native | jumo:independentVerificationEvidenceMaxAge |




## LinkML Source

<details>
```yaml
name: independentVerificationEvidenceMaxAge
description: Maximum age of the independent-verification observation before its ENFORCED
  claim must be treated as stale, default PT24H.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmEnforcement
domain_of:
- RealmEnforcement
range: Duration

```
</details></div>