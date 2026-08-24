---
search:
  boost: 5.0
---

# Slot: gitCommitSha

<div data-search-exclude markdown="1">



URI: [jumo:gitCommitSha](https://jumo.dev/schemas/jumo-v1/gitCommitSha)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ExecutionCellLease](ExecutionCellLease.md), [CliInvocationRequest](CliInvocationRequest.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:gitCommitSha |
| native | jumo:gitCommitSha |




## LinkML Source

<details>
```yaml
name: gitCommitSha
domain_of:
- ExecutionCellLease
- CliInvocationRequest
range: string

```
</details></div>