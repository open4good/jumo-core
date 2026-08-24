---
search:
  boost: 5.0
---

# Slot: consentState


_NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the Realm. For a CONTACT, the Realm's own record of whether that person agreed to being modeled -- never proof of consent, only a claim the Realm makes._



<div data-search-exclude markdown="1">



URI: [jumo:consentState](https://jumo.dev/schemas/jumo-v1/consentState)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipalSpec](PrincipalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ConsentState](ConsentState.md) |
| Domain Of | [PrincipalSpec](PrincipalSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PrincipalSpec](PrincipalSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:consentState |
| native | jumo:consentState |




## LinkML Source

<details>
```yaml
name: consentState
description: NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the Realm.
  For a CONTACT, the Realm's own record of whether that person agreed to being modeled
  -- never proof of consent, only a claim the Realm makes.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PrincipalSpec
domain_of:
- PrincipalSpec
range: ConsentState
required: true

```
</details></div>