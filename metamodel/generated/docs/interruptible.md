---
search:
  boost: 5.0
---

# Slot: interruptible

<div data-search-exclude markdown="1">



URI: [jumo:interruptible](https://jumo.dev/schemas/jumo-v1/interruptible)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Boolean](Boolean.md) |
| Domain Of | [AssistedJourneySpec](AssistedJourneySpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| If Absent | `true` |
| Owner | [AssistedJourneySpec](AssistedJourneySpec.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:interruptible |
| native | jumo:interruptible |




## LinkML Source

<details>
```yaml
name: interruptible
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
ifabsent: 'true'
owner: AssistedJourneySpec
domain_of:
- AssistedJourneySpec
range: boolean

```
</details></div>