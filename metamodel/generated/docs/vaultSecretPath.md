---
search:
  boost: 5.0
---

# Slot: vaultSecretPath

<div data-search-exclude markdown="1">



URI: [jumo:vaultSecretPath](https://jumo.dev/schemas/jumo-v1/vaultSecretPath)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OAuthClientBindingSpec](OAuthClientBindingSpec.md) | Specification for an OAuthClientBinding contract |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OAuthClientBindingSpec](OAuthClientBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [OAuthClientBindingSpec](OAuthClientBindingSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:vaultSecretPath |
| native | jumo:vaultSecretPath |




## LinkML Source

<details>
```yaml
name: vaultSecretPath
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: OAuthClientBindingSpec
domain_of:
- OAuthClientBindingSpec
range: string
required: true

```
</details></div>