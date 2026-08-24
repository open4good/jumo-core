---
search:
  boost: 5.0
---

# Slot: timerDelay


_Required only for TIMER starts; ISO-8601 duration rather than cron._



<div data-search-exclude markdown="1">



URI: [jumo:timerDelay](https://jumo.dev/schemas/jumo-v1/timerDelay)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Duration](Duration.md) |
| Domain Of | [ProcessSpecBody](ProcessSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [ProcessSpecBody](ProcessSpecBody.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:timerDelay |
| native | jumo:timerDelay |




## LinkML Source

<details>
```yaml
name: timerDelay
description: Required only for TIMER starts; ISO-8601 duration rather than cron.
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: ProcessSpecBody
domain_of:
- ProcessSpecBody
range: Duration

```
</details></div>