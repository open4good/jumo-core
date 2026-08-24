---
search:
  boost: 5.0
---

# Slot: stages

<div data-search-exclude markdown="1">



URI: [jumo:stages](https://jumo.dev/schemas/jumo-v1/stages)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementMethodSpec](EngagementMethodSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EngagementStage](EngagementStage.md) |
| Domain Of | [EngagementMethodSpec](EngagementMethodSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
| Multivalued | Yes |
| Minimum Cardinality | 1 |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EngagementMethodSpec](EngagementMethodSpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:stages |
| native | jumo:stages |




## LinkML Source

<details>
```yaml
name: stages
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementMethodSpec
domain_of:
- EngagementMethodSpec
range: EngagementStage
required: true
multivalued: true
inlined: true
inlined_as_list: true
minimum_cardinality: 1

```
</details></div>