---
search:
  boost: 5.0
---

# Slot: requestedCapabilities


_A request, not a grant. Policy decides._



<div data-search-exclude markdown="1">



URI: [jumo:requestedCapabilities](https://jumo.dev/schemas/jumo-v1/requestedCapabilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentDefinitionSpec](AgentDefinitionSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [CapabilityName](CapabilityName.md) |
| Domain Of | [AgentDefinitionSpec](AgentDefinitionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AgentDefinitionSpec](AgentDefinitionSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:requestedCapabilities |
| native | jumo:requestedCapabilities |




## LinkML Source

<details>
```yaml
name: requestedCapabilities
description: A request, not a grant. Policy decides.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AgentDefinitionSpec
domain_of:
- AgentDefinitionSpec
range: CapabilityName
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>