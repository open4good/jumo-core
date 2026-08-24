---
search:
  boost: 5.0
---

# Slot: revision

<div data-search-exclude markdown="1">



URI: [jumo:revision](https://jumo.dev/schemas/jumo-v1/revision)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
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
| Domain Of | [ChangeProposalRef](ChangeProposalRef.md), [ForgeProjectionRef](ForgeProjectionRef.md), [ProcessRunRef](ProcessRunRef.md), [ApprovalSignal](ApprovalSignal.md), [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:revision |
| native | jumo:revision |




## LinkML Source

<details>
```yaml
name: revision
domain_of:
- ChangeProposalRef
- ForgeProjectionRef
- ProcessRunRef
- ApprovalSignal
- ExecutionCellProvisioningRef
range: string

```
</details></div>