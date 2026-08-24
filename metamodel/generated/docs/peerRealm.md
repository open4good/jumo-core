---
search:
  boost: 5.0
---

# Slot: peerRealm

<div data-search-exclude markdown="1">



URI: [jumo:peerRealm](https://jumo.dev/schemas/jumo-v1/peerRealm)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
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
| self | jumo:peerRealm |
| native | jumo:peerRealm |




## LinkML Source

<details>
```yaml
name: peerRealm
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSpec
domain_of:
- FederatedPeerSpec
range: Identifier
required: true

```
</details></div>