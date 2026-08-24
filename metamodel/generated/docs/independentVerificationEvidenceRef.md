---
search:
  boost: 5.0
---

# Slot: independentVerificationEvidenceRef

<div data-search-exclude markdown="1">



URI: [jumo:independentVerificationEvidenceRef](https://jumo.dev/schemas/jumo-v1/independentVerificationEvidenceRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RealmEnforcement](RealmEnforcement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [RealmEnforcement](RealmEnforcement.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:independentVerificationEvidenceRef |
| native | jumo:independentVerificationEvidenceRef |




## LinkML Source

<details>
```yaml
name: independentVerificationEvidenceRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmEnforcement
domain_of:
- RealmEnforcement
range: string
pattern: ^.{1,}$

```
</details></div>