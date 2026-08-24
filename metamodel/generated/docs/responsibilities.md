---
search:
  boost: 5.0
---

# Slot: responsibilities

<div data-search-exclude markdown="1">



URI: [jumo:responsibilities](https://jumo.dev/schemas/jumo-v1/responsibilities)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AgentDefinitionSpec](AgentDefinitionSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [AgentDefinitionSpec](AgentDefinitionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [AgentDefinitionSpec](AgentDefinitionSpec.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Regex Pattern | `^.{5,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:responsibilities |
| native | jumo:responsibilities |




## LinkML Source

<details>
```yaml
name: responsibilities
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: AgentDefinitionSpec
domain_of:
- AgentDefinitionSpec
range: string
required: true
multivalued: true
pattern: ^.{5,}$

```
</details></div>