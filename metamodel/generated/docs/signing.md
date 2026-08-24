---
search:
  boost: 5.0
---

# Slot: signing

<div data-search-exclude markdown="1">



URI: [jumo:signing](https://jumo.dev/schemas/jumo-v1/signing)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [FederatedPeerSigning](FederatedPeerSigning.md) |
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
| self | jumo:signing |
| native | jumo:signing |




## LinkML Source

<details>
```yaml
name: signing
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSpec
domain_of:
- FederatedPeerSpec
range: FederatedPeerSigning
required: true
inlined: true

```
</details></div>