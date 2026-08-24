---
search:
  boost: 5.0
---

# Slot: evidenceMaxAge


_Maximum age of the Forge protection observation before an autonomy gate must treat the claim as stale (ADR-0028, default PT24H)._



<div data-search-exclude markdown="1">



URI: [jumo:evidenceMaxAge](https://jumo.dev/schemas/jumo-v1/evidenceMaxAge)
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
| self | jumo:evidenceMaxAge |
| native | jumo:evidenceMaxAge |




## LinkML Source

<details>
```yaml
name: evidenceMaxAge
description: Maximum age of the Forge protection observation before an autonomy gate
  must treat the claim as stale (ADR-0028, default PT24H).
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmEnforcement
domain_of:
- RealmEnforcement
range: Duration

```
</details></div>