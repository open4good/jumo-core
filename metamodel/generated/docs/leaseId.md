---
search:
  boost: 5.0
---

# Slot: leaseId

<div data-search-exclude markdown="1">



URI: [jumo:leaseId](https://jumo.dev/schemas/jumo-v1/leaseId)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [DelegatedSecretGrant](DelegatedSecretGrant.md) | One response-wrapped OpenBao child token grant issued for a lease and SecretB... |  no  |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |  no  |
| [SessionPlanRequest](SessionPlanRequest.md) | Request to issue a signed MCP gateway session plan for one ExecutionCellLease... |  no  |
| [SessionPlan](SessionPlan.md) | Signed MCP gateway session plan scoped to one ExecutionCellLease (mcp-gateway... |  no  |
| [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md) | Machine-authenticated request to authorize one planned MCP operation without ... |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |
| [McpInvocationOutcome](McpInvocationOutcome.md) | Sanitized terminal outcome for one dispatched MCP invocation |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [WorkloadCommand](WorkloadCommand.md), [ExecutionCellLease](ExecutionCellLease.md), [DelegatedSecretGrant](DelegatedSecretGrant.md), [CliInvocationRequest](CliInvocationRequest.md), [SessionPlanRequest](SessionPlanRequest.md), [SessionPlan](SessionPlan.md), [McpInvocationAuthorizationRequest](McpInvocationAuthorizationRequest.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md), [McpInvocationOutcome](McpInvocationOutcome.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:leaseId |
| native | jumo:leaseId |




## LinkML Source

<details>
```yaml
name: leaseId
domain_of:
- WorkloadCommand
- ExecutionCellLease
- DelegatedSecretGrant
- CliInvocationRequest
- SessionPlanRequest
- SessionPlan
- McpInvocationAuthorizationRequest
- McpInvocationAuthorizationReceipt
- McpInvocationOutcome
range: string

```
</details></div>