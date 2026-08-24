---
search:
  boost: 5.0
---

# Slot: allowedOperationRefs

<div data-search-exclude markdown="1">



URI: [jumo:allowedOperationRefs](https://jumo.dev/schemas/jumo-v1/allowedOperationRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [SecretBindingSpec](SecretBindingSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
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
| self | jumo:allowedOperationRefs |
| native | jumo:allowedOperationRefs |




## LinkML Source

<details>
```yaml
name: allowedOperationRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretBindingSpec
domain_of:
- SecretBindingSpec
range: Identifier
multivalued: true

```
</details></div>