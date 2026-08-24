---
search:
  boost: 5.0
---

# Slot: payloadJson

<div data-search-exclude markdown="1">



URI: [jumo:payloadJson](https://jumo.dev/schemas/jumo-v1/payloadJson)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |  no  |
| [SchemaBoundPayload](SchemaBoundPayload.md) | Bounded dynamic JSON payload guaranteed by a validated SchemaBinding |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInvocationEvent](CliInvocationEvent.md), [SchemaBoundPayload](SchemaBoundPayload.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:payloadJson |
| native | jumo:payloadJson |




## LinkML Source

<details>
```yaml
name: payloadJson
domain_of:
- CliInvocationEvent
- SchemaBoundPayload
range: string

```
</details></div>