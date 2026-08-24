---
search:
  boost: 5.0
---

# Slot: maximumDuration

<div data-search-exclude markdown="1">



URI: [jumo:maximumDuration](https://jumo.dev/schemas/jumo-v1/maximumDuration)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [EngagementTermination](EngagementTermination.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [EngagementTermination](EngagementTermination.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [EngagementTermination](EngagementTermination.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumDuration |
| native | jumo:maximumDuration |




## LinkML Source

<details>
```yaml
name: maximumDuration
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: EngagementTermination
domain_of:
- EngagementTermination
range: Duration
required: true

```
</details></div>