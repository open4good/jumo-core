---
search:
  boost: 5.0
---

# Slot: expiresAt

<div data-search-exclude markdown="1">



URI: [jumo:expiresAt](https://jumo.dev/schemas/jumo-v1/expiresAt)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md) |  |  no  |
| [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) | Short-lived enrollment challenge issued by the control plane |  no  |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |  no  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |
| [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) | Signed, short-lived authorization receipt bound to exactly one MCP invocation |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |
| [EffectTestAuthorization](EffectTestAuthorization.md) | Dual-consent authorization record for executing irreversible effect tests |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md), [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md), [MachineAdminCommand](MachineAdminCommand.md), [WorkloadCommand](WorkloadCommand.md), [ExecutionCellLease](ExecutionCellLease.md), [ProviderSessionBinding](ProviderSessionBinding.md), [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md), [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md), [ConnectorSessionBinding](ConnectorSessionBinding.md), [EffectTestAuthorization](EffectTestAuthorization.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:expiresAt |
| native | jumo:expiresAt |




## LinkML Source

<details>
```yaml
name: expiresAt
domain_of:
- OrganizationRetentionHoldSpec
- MachineEnrollmentChallenge
- MachineAdminCommand
- WorkloadCommand
- ExecutionCellLease
- ProviderSessionBinding
- InvocationAuthorizationReceipt
- McpInvocationAuthorizationReceipt
- ConnectorSessionBinding
- EffectTestAuthorization
range: string

```
</details></div>