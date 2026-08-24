---
search:
  boost: 5.0
---

# Slot: assurance

<div data-search-exclude markdown="1">



URI: [jumo:assurance](https://jumo.dev/schemas/jumo-v1/assurance)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementMethodSpec](EngagementMethodSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [AssuranceLevel](AssuranceLevel.md) |
| Domain Of | [EngagementMethodSpec](EngagementMethodSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:assurance |
| native | jumo:assurance |




## LinkML Source

<details>
```yaml
name: assurance
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementMethodSpec
domain_of:
- EngagementMethodSpec
range: AssuranceLevel
required: true

```
</details></div>