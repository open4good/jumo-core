---
search:
  boost: 5.0
---

# Slot: allowedRequests

<div data-search-exclude markdown="1">



URI: [jumo:allowedRequests](https://jumo.dev/schemas/jumo-v1/allowedRequests)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [SolicitationContractSpec](SolicitationContractSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AllowedRequest](AllowedRequest.md) |
| Domain Of | [SolicitationContractSpec](SolicitationContractSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [SolicitationContractSpec](SolicitationContractSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:allowedRequests |
| native | jumo:allowedRequests |




## LinkML Source

<details>
```yaml
name: allowedRequests
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: SolicitationContractSpec
domain_of:
- SolicitationContractSpec
range: AllowedRequest
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>