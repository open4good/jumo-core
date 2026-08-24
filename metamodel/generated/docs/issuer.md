---
search:
  boost: 5.0
---

# Slot: issuer

<div data-search-exclude markdown="1">



URI: [jumo:issuer](https://jumo.dev/schemas/jumo-v1/issuer)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^https://.+$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:issuer |
| native | jumo:issuer |




## LinkML Source

<details>
```yaml
name: issuer
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: PrincipalIdentityBindingSpec
domain_of:
- PrincipalIdentityBindingSpec
range: string
required: true
pattern: ^https://.+$

```
</details></div>