---
search:
  boost: 5.0
---

# Slot: eventType

<div data-search-exclude markdown="1">



URI: [jumo:eventType](https://jumo.dev/schemas/jumo-v1/eventType)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInvocationEvent](CliInvocationEvent.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliInvocationEvent](CliInvocationEvent.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:eventType |
| native | jumo:eventType |




## LinkML Source

<details>
```yaml
name: eventType
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationEvent
domain_of:
- CliInvocationEvent
range: string
required: true

```
</details></div>