---
search:
  boost: 5.0
---

# Slot: allowedMcpBundleRefs

<div data-search-exclude markdown="1">



URI: [jumo:allowedMcpBundleRefs](https://jumo.dev/schemas/jumo-v1/allowedMcpBundleRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
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
| self | jumo:allowedMcpBundleRefs |
| native | jumo:allowedMcpBundleRefs |




## LinkML Source

<details>
```yaml
name: allowedMcpBundleRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SecretBindingSpec
domain_of:
- SecretBindingSpec
range: ContractReference
multivalued: true
inlined: true
inlined_as_list: true

```
</details></div>