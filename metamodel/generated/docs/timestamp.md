---
search:
  boost: 5.0
---

# Slot: timestamp

<div data-search-exclude markdown="1">



URI: [jumo:timestamp](https://jumo.dev/schemas/jumo-v1/timestamp)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInvocationEvent](CliInvocationEvent.md), [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:timestamp |
| native | jumo:timestamp |




## LinkML Source

<details>
```yaml
name: timestamp
domain_of:
- CliInvocationEvent
- ApiProblem
range: string

```
</details></div>