---
search:
  boost: 5.0
---

# Slot: prompt

<div data-search-exclude markdown="1">



URI: [jumo:prompt](https://jumo.dev/schemas/jumo-v1/prompt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:prompt |
| native | jumo:prompt |




## LinkML Source

<details>
```yaml
name: prompt
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationRequest
domain_of:
- CliInvocationRequest
range: string
required: true

```
</details></div>