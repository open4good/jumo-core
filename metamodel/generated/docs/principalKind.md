---
search:
  boost: 5.0
---

# Slot: principalKind


_OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions; a CONTACT is modeled by someone else's Realm and has neither._



<div data-search-exclude markdown="1">



URI: [jumo:principalKind](https://jumo.dev/schemas/jumo-v1/principalKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipalSpec](PrincipalSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [PrincipalKind](PrincipalKind.md) |
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
| self | jumo:principalKind |
| native | jumo:principalKind |




## LinkML Source

<details>
```yaml
name: principalKind
description: OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions; a
  CONTACT is modeled by someone else's Realm and has neither.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PrincipalSpec
domain_of:
- PrincipalSpec
range: PrincipalKind
required: true

```
</details></div>