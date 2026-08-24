---
search:
  boost: 5.0
---

# Slot: maximumLiveInterruptionsPerHour

<div data-search-exclude markdown="1">



URI: [jumo:maximumLiveInterruptionsPerHour](https://jumo.dev/schemas/jumo-v1/maximumLiveInterruptionsPerHour)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [NotificationPreferences](NotificationPreferences.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [NotificationPreferences](NotificationPreferences.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [NotificationPreferences](NotificationPreferences.md) |


### Value Constraints

| Property | Value |
| --- | --- |
| Minimum Value | 0 |
| Maximum Value | 100 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:maximumLiveInterruptionsPerHour |
| native | jumo:maximumLiveInterruptionsPerHour |




## LinkML Source

<details>
```yaml
name: maximumLiveInterruptionsPerHour
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NotificationPreferences
domain_of:
- NotificationPreferences
range: integer
minimum_value: 0
maximum_value: 100

```
</details></div>