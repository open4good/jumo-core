---
search:
  boost: 5.0
---

# Slot: driverKind

<div data-search-exclude markdown="1">



URI: [jumo:driverKind](https://jumo.dev/schemas/jumo-v1/driverKind)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [WorkloadDriverKind](WorkloadDriverKind.md) |
| Domain Of | [WorkloadCommand](WorkloadCommand.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
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
| self | jumo:driverKind |
| native | jumo:driverKind |




## LinkML Source

<details>
```yaml
name: driverKind
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkloadCommand
domain_of:
- WorkloadCommand
range: WorkloadDriverKind
required: true

```
</details></div>