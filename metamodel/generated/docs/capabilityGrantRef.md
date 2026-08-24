---
search:
  boost: 5.0
---

# Slot: capabilityGrantRef

<div data-search-exclude markdown="1">



URI: [jumo:capabilityGrantRef](https://jumo.dev/schemas/jumo-v1/capabilityGrantRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [Identifier](Identifier.md) |
| Domain Of | [WorkerInvocation](WorkerInvocation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |
| Required | Yes |
### Slot Characteristics

| Property | Value |
| --- | --- |
| Owner | [WorkerInvocation](WorkerInvocation.md) |












## Identifier and Mapping Information





### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:capabilityGrantRef |
| native | jumo:capabilityGrantRef |




## LinkML Source

<details>
```yaml
name: capabilityGrantRef
from_schema: https://jumo.dev/schemas/jumo-v1
rank: 1000
owner: WorkerInvocation
domain_of:
- WorkerInvocation
range: Identifier
required: true

```
</details></div>