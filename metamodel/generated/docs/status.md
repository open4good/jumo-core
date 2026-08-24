---
search:
  boost: 5.0
---

# Slot: status

<div data-search-exclude markdown="1">



URI: [jumo:status](https://jumo.dev/schemas/jumo-v1/status)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |  no  |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |  no  |
| [MachineHealthObservation](MachineHealthObservation.md) | Observed real-time health and load status of an execution machine |  no  |
| [MachineEnrollmentResult](MachineEnrollmentResult.md) | Result of a machine enrollment challenge containing issued mTLS certificates |  no  |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |  no  |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |  no  |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |  no  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |  no  |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |  no  |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |  no  |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |  no  |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |  no  |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [DocumentFrontMatter](DocumentFrontMatter.md), [ComplianceProfileSpec](ComplianceProfileSpec.md), [ControlAssessment](ControlAssessment.md), [MachineHealthObservation](MachineHealthObservation.md), [MachineEnrollmentResult](MachineEnrollmentResult.md), [MachineAdminResult](MachineAdminResult.md), [WorkloadCommandResult](WorkloadCommandResult.md), [MachineRuntimeInstallation](MachineRuntimeInstallation.md), [ExecutionCellLease](ExecutionCellLease.md), [CliInstallationObservation](CliInstallationObservation.md), [CliInvocationResult](CliInvocationResult.md), [ProviderQuotaObservation](ProviderQuotaObservation.md), [ProviderSessionBinding](ProviderSessionBinding.md), [WorkerInvocation](WorkerInvocation.md), [ConnectorSessionBinding](ConnectorSessionBinding.md), [ConnectorTestResult](ConnectorTestResult.md), [ApiProblem](ApiProblem.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:status |
| native | jumo:status |




## LinkML Source

<details>
```yaml
name: status
domain_of:
- DocumentFrontMatter
- ComplianceProfileSpec
- ControlAssessment
- MachineHealthObservation
- MachineEnrollmentResult
- MachineAdminResult
- WorkloadCommandResult
- MachineRuntimeInstallation
- ExecutionCellLease
- CliInstallationObservation
- CliInvocationResult
- ProviderQuotaObservation
- ProviderSessionBinding
- WorkerInvocation
- ConnectorSessionBinding
- ConnectorTestResult
- ApiProblem
range: string

```
</details></div>