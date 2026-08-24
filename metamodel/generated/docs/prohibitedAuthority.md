---
search:
  boost: 5.0
---

# Slot: prohibitedAuthority

<div data-search-exclude markdown="1">



URI: [jumo:prohibitedAuthority](https://jumo.dev/schemas/jumo-v1/prohibitedAuthority)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentDefinitionSpec](AgentDefinitionSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [ProhibitedAuthority](ProhibitedAuthority.md) |
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
| self | jumo:prohibitedAuthority |
| native | jumo:prohibitedAuthority |




## LinkML Source

<details>
```yaml
name: prohibitedAuthority
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AgentDefinitionSpec
domain_of:
- AgentDefinitionSpec
range: ProhibitedAuthority
required: true
multivalued: true
minimum_cardinality: 1

```
</details></div>