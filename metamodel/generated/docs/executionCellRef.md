---
search:
  boost: 5.0
---

# Slot: executionCellRef

<div data-search-exclude markdown="1">



URI: [jumo:executionCellRef](https://jumo.dev/schemas/jumo-v1/executionCellRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoutingDecision](RoutingDecision.md), [WorkerInvocation](WorkerInvocation.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:executionCellRef |
| native | jumo:executionCellRef |




## LinkML Source

<details>
```yaml
name: executionCellRef
domain_of:
- RoutingDecision
- WorkerInvocation
range: string

```
</details></div>