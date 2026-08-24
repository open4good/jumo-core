---
search:
  boost: 5.0
---

# Slot: endpoint

<div data-search-exclude markdown="1">



URI: [jumo:endpoint](https://jumo.dev/schemas/jumo-v1/endpoint)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [FederatedPeerSpec](FederatedPeerSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [FederatedPeerSpec](FederatedPeerSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^https://` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:endpoint |
| native | jumo:endpoint |




## LinkML Source

<details>
```yaml
name: endpoint
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederatedPeerSpec
domain_of:
- FederatedPeerSpec
range: string
required: true
pattern: ^https://

```
</details></div>