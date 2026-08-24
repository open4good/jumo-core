---
search:
  boost: 5.0
---

# Slot: timeZone

<div data-search-exclude markdown="1">



URI: [jumo:timeZone](https://jumo.dev/schemas/jumo-v1/timeZone)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [NotificationPreferences](NotificationPreferences.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
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
| Regex Pattern | `^.{1,}$` |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:timeZone |
| native | jumo:timeZone |




## LinkML Source

<details>
```yaml
name: timeZone
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NotificationPreferences
domain_of:
- NotificationPreferences
range: string
pattern: ^.{1,}$

```
</details></div>