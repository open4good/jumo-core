---
search:
  boost: 5.0
---

# Slot: projectRef

<div data-search-exclude markdown="1">



URI: [jumo:projectRef](https://jumo.dev/schemas/jumo-v1/projectRef)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |  |  no  |
| [WorkOrderSpec](WorkOrderSpec.md) |  |  no  |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |  no  |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |
| [ChangeProposalRef](ChangeProposalRef.md) | Narrow hash-bound reference; it never contains a document body or secret |  no  |
| [ForgeProjectionRef](ForgeProjectionRef.md) |  |  no  |
| [ProcessRunRef](ProcessRunRef.md) |  |  no  |
| [ApprovalSignal](ApprovalSignal.md) | Minimal user/message signal envelope; no approval decision is inferred from i... |  no  |
| [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) | Narrow hash-bound reference to one hosted-execution-cell provisioning run |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RoutingEligibilitySpec](RoutingEligibilitySpec.md), [WorkOrderSpec](WorkOrderSpec.md), [ImprovementLoopSpec](ImprovementLoopSpec.md), [ProcessSpecBody](ProcessSpecBody.md), [ChangeProposalRef](ChangeProposalRef.md), [ForgeProjectionRef](ForgeProjectionRef.md), [ProcessRunRef](ProcessRunRef.md), [ApprovalSignal](ApprovalSignal.md), [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:projectRef |
| native | jumo:projectRef |




## LinkML Source

<details>
```yaml
name: projectRef
domain_of:
- RoutingEligibilitySpec
- WorkOrderSpec
- ImprovementLoopSpec
- ProcessSpecBody
- ChangeProposalRef
- ForgeProjectionRef
- ProcessRunRef
- ApprovalSignal
- ExecutionCellProvisioningRef
range: string

```
</details></div>