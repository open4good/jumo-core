---
search:
  boost: 5.0
---

# Slot: federationProfileRefs

<div data-search-exclude markdown="1">



URI: [jumo:federationProfileRefs](https://jumo.dev/schemas/jumo-v1/federationProfileRefs)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ContractReference](ContractReference.md) |
| Domain Of | [FederatedPeerSpec](FederatedPeerSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
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
| self | jumo:federationProfileRefs |
| native | jumo:federationProfileRefs |




## LinkML Source

<details>
```yaml
name: federationProfileRefs
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSpec
domain_of:
- FederatedPeerSpec
range: ContractReference
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>