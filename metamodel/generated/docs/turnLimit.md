---
search:
  boost: 5.0
---

# Slot: turnLimit

<div data-search-exclude markdown="1">



URI: [jumo:turnLimit](https://jumo.dev/schemas/jumo-v1/turnLimit)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Integer](Integer.md) |
| Domain Of | [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [CliInvocationRequest](CliInvocationRequest.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:turnLimit |
| native | jumo:turnLimit |




## LinkML Source

<details>
```yaml
name: turnLimit
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationRequest
domain_of:
- CliInvocationRequest
range: integer

```
</details></div>