---
search:
  boost: 5.0
---

# Slot: gate

<div data-search-exclude markdown="1">



URI: [jumo:gate](https://jumo.dev/schemas/jumo-v1/gate)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementStage](EngagementStage.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [EngagementGate](EngagementGate.md) |
| Domain Of | [EngagementStage](EngagementStage.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EngagementStage](EngagementStage.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:gate |
| native | jumo:gate |




## LinkML Source

<details>
```yaml
name: gate
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementStage
domain_of:
- EngagementStage
range: EngagementGate
required: true

```
</details></div>