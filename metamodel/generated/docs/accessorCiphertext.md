---
search:
  boost: 5.0
---

# Slot: accessorCiphertext

<div data-search-exclude markdown="1">



URI: [jumo:accessorCiphertext](https://jumo.dev/schemas/jumo-v1/accessorCiphertext)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DelegatedSecretGrant](DelegatedSecretGrant.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [DelegatedSecretGrant](DelegatedSecretGrant.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:accessorCiphertext |
| native | jumo:accessorCiphertext |




## LinkML Source

<details>
```yaml
name: accessorCiphertext
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DelegatedSecretGrant
domain_of:
- DelegatedSecretGrant
range: string
required: true

```
</details></div>