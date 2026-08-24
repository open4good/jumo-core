---
search:
  boost: 5.0
---

# Slot: peerKeyId

<div data-search-exclude markdown="1">



URI: [jumo:peerKeyId](https://jumo.dev/schemas/jumo-v1/peerKeyId)
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
| Regex Pattern | `^.{3,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:peerKeyId |
| native | jumo:peerKeyId |




## LinkML Source

<details>
```yaml
name: peerKeyId
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSigning
domain_of:
- FederatedPeerSigning
range: string
required: true
pattern: ^.{3,}$

```
</details></div>