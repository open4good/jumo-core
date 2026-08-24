---
search:
  boost: 5.0
---

# Slot: payload

<div data-search-exclude markdown="1">



URI: [jumo:payload](https://jumo.dev/schemas/jumo-v1/payload)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [SchemaBoundPayload](SchemaBoundPayload.md) |
| Domain Of | [WorkloadCommand](WorkloadCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkloadCommand](WorkloadCommand.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:payload |
| native | jumo:payload |




## LinkML Source

<details>
```yaml
name: payload
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkloadCommand
domain_of:
- WorkloadCommand
range: SchemaBoundPayload
inlined: true

```
</details></div>