---
search:
  boost: 5.0
---

# Slot: peerPublicKeySha256

<div data-search-exclude markdown="1">



URI: [jumo:peerPublicKeySha256](https://jumo.dev/schemas/jumo-v1/peerPublicKeySha256)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSigning](FederatedPeerSigning.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [FederatedPeerSigning](FederatedPeerSigning.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [FederatedPeerSigning](FederatedPeerSigning.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^sha256:[0-9a-f]{64}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:peerPublicKeySha256 |
| native | jumo:peerPublicKeySha256 |




## LinkML Source

<details>
```yaml
name: peerPublicKeySha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSigning
domain_of:
- FederatedPeerSigning
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>