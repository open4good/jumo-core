---
search:
  boost: 5.0
---

# Slot: rotation

<div data-search-exclude markdown="1">



URI: [jumo:rotation](https://jumo.dev/schemas/jumo-v1/rotation)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SecretRotation](SecretRotation.md) |
| Domain Of | [SecretBindingSpec](SecretBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
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
| self | jumo:rotation |
| native | jumo:rotation |




## LinkML Source

<details>
```yaml
name: rotation
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretBindingSpec
domain_of:
- SecretBindingSpec
range: SecretRotation
inlined: true

```
</details></div>