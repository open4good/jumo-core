---
search:
  boost: 5.0
---

# Slot: injection

<div data-search-exclude markdown="1">



URI: [jumo:injection](https://jumo.dev/schemas/jumo-v1/injection)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SecretInjection](SecretInjection.md) |
| Domain Of | [SecretBindingSpec](SecretBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SecretBindingSpec](SecretBindingSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:injection |
| native | jumo:injection |




## LinkML Source

<details>
```yaml
name: injection
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretBindingSpec
domain_of:
- SecretBindingSpec
range: SecretInjection
required: true
inlined: true

```
</details></div>