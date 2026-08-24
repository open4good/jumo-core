---
search:
  boost: 5.0
---

# Slot: skills

<div data-search-exclude markdown="1">



URI: [jumo:skills](https://jumo.dev/schemas/jumo-v1/skills)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentCard](AgentCard.md) | A2A v1 |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AgentCardSkill](AgentCardSkill.md) |
| Domain Of | [AgentCard](AgentCard.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AgentCard](AgentCard.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:skills |
| native | jumo:skills |




## LinkML Source

<details>
```yaml
name: skills
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AgentCard
domain_of:
- AgentCard
range: AgentCardSkill
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>