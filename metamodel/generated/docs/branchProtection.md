---
search:
  boost: 5.0
---

# Slot: branchProtection

<div data-search-exclude markdown="1">



URI: [jumo:branchProtection](https://jumo.dev/schemas/jumo-v1/branchProtection)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [BranchProtectionState](BranchProtectionState.md) |
| Domain Of | [RealmEnforcement](RealmEnforcement.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:branchProtection |
| native | jumo:branchProtection |




## LinkML Source

<details>
```yaml
name: branchProtection
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: RealmEnforcement
domain_of:
- RealmEnforcement
range: BranchProtectionState
required: true

```
</details></div>