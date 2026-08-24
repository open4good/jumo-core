---
search:
  boost: 5.0
---

# Slot: peerCertificateSha256

<div data-search-exclude markdown="1">



URI: [jumo:peerCertificateSha256](https://jumo.dev/schemas/jumo-v1/peerCertificateSha256)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerMtls](FederatedPeerMtls.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [FederatedPeerMtls](FederatedPeerMtls.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [FederatedPeerMtls](FederatedPeerMtls.md) |


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
| self | jumo:peerCertificateSha256 |
| native | jumo:peerCertificateSha256 |




## LinkML Source

<details>
```yaml
name: peerCertificateSha256
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerMtls
domain_of:
- FederatedPeerMtls
range: string
required: true
pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>