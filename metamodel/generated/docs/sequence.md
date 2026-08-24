---
search:
  boost: 5.0
---

# Slot: sequence

<div data-search-exclude markdown="1">



URI: [jumo:sequence](https://jumo.dev/schemas/jumo-v1/sequence)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
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
| self | jumo:sequence |
| native | jumo:sequence |




## LinkML Source

<details>
```yaml
name: sequence
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationEvent
domain_of:
- CliInvocationEvent
range: integer
required: true

```
</details></div>