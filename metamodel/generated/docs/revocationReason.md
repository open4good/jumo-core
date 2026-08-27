---
search:
  boost: 5.0
---

# Slot: revocationReason

<div data-search-exclude markdown="1">



URI: [jumo:revocationReason](https://jumo.dev/schemas/jumo-v1/revocationReason)
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
| self | jumo:revocationReason |
| native | jumo:revocationReason |




## LinkML Source

<details>
```yaml
name: revocationReason
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: DelegatedSecretGrant
domain_of:
- DelegatedSecretGrant
range: string

```
</details></div>