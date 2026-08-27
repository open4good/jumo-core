---
search:
  boost: 5.0
---

# Slot: consumedAt

<div data-search-exclude markdown="1">



URI: [jumo:consumedAt](https://jumo.dev/schemas/jumo-v1/consumedAt)
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
| self | jumo:consumedAt |
| native | jumo:consumedAt |




## LinkML Source

<details>
```yaml
name: consumedAt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DelegatedSecretGrant
domain_of:
- DelegatedSecretGrant
range: string

```
</details></div>