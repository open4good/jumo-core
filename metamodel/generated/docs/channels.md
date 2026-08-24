---
search:
  boost: 5.0
---

# Slot: channels

<div data-search-exclude markdown="1">



URI: [jumo:channels](https://jumo.dev/schemas/jumo-v1/channels)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [NotificationPreferences](NotificationPreferences.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [NotificationChannel](NotificationChannel.md) |
| Domain Of | [NotificationPreferences](NotificationPreferences.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Multivalued | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [NotificationPreferences](NotificationPreferences.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:channels |
| native | jumo:channels |




## LinkML Source

<details>
```yaml
name: channels
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: NotificationPreferences
domain_of:
- NotificationPreferences
range: NotificationChannel
multivalued: true

```
</details></div>