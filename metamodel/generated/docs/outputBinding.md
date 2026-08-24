---
search:
  boost: 5.0
---

# Slot: outputBinding

<div data-search-exclude markdown="1">



URI: [jumo:outputBinding](https://jumo.dev/schemas/jumo-v1/outputBinding)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SchemaBinding](SchemaBinding.md) |
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
| self | jumo:outputBinding |
| native | jumo:outputBinding |




## LinkML Source

<details>
```yaml
name: outputBinding
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: CliInvocationRequest
domain_of:
- CliInvocationRequest
range: SchemaBinding
inlined: true

```
</details></div>