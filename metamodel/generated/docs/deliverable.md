---
search:
  boost: 5.0
---

# Slot: deliverable

<div data-search-exclude markdown="1">



URI: [jumo:deliverable](https://jumo.dev/schemas/jumo-v1/deliverable)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementStage](EngagementStage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [EngagementStage](EngagementStage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EngagementStage](EngagementStage.md) |


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
| self | jumo:deliverable |
| native | jumo:deliverable |




## LinkML Source

<details>
```yaml
name: deliverable
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementStage
domain_of:
- EngagementStage
range: string
required: true
pattern: ^.{3,}$

```
</details></div>