---
search:
  boost: 5.0
---

# Slot: escalationDelaySeconds

<div data-search-exclude markdown="1">



URI: [jumo:escalationDelaySeconds](https://jumo.dev/schemas/jumo-v1/escalationDelaySeconds)
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
| Minimum Value | 1 |
| Maximum Value | 604800 |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:escalationDelaySeconds |
| native | jumo:escalationDelaySeconds |




## LinkML Source

<details>
```yaml
name: escalationDelaySeconds
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NotificationPreferences
domain_of:
- NotificationPreferences
range: integer
minimum_value: 1
maximum_value: 604800

```
</details></div>