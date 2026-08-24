---
search:
  boost: 5.0
---

# Slot: mtls

<div data-search-exclude markdown="1">



URI: [jumo:mtls](https://jumo.dev/schemas/jumo-v1/mtls)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [FederatedPeerMtls](FederatedPeerMtls.md) |
| Domain Of | [FederatedPeerSpec](FederatedPeerSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [FederatedPeerSpec](FederatedPeerSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:mtls |
| native | jumo:mtls |




## LinkML Source

<details>
```yaml
name: mtls
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSpec
domain_of:
- FederatedPeerSpec
range: FederatedPeerMtls
required: true
inlined: true

```
</details></div>