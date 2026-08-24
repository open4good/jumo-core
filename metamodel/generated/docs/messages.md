---
search:
  boost: 5.0
---

# Slot: messages

<div data-search-exclude markdown="1">



URI: [jumo:messages](https://jumo.dev/schemas/jumo-v1/messages)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [FederationProfileSpec](FederationProfileSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [FederationMessage](FederationMessage.md) |
| Domain Of | [FederationProfileSpec](FederationProfileSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [FederationProfileSpec](FederationProfileSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:messages |
| native | jumo:messages |




## LinkML Source

<details>
```yaml
name: messages
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: FederationProfileSpec
domain_of:
- FederationProfileSpec
range: FederationMessage
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>