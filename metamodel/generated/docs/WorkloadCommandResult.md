---
search:
  boost: 10.0
---

# Class: WorkloadCommandResult


_Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the machine._



<div data-search-exclude markdown="1">



URI: [jumo:WorkloadCommandResult](https://jumo.dev/schemas/jumo-v1/WorkloadCommandResult)





```mermaid
 classDiagram
    class WorkloadCommandResult
    click WorkloadCommandResult href "../WorkloadCommandResult/"
      WorkloadCommandResult : commandId

      WorkloadCommandResult : completedAt

      WorkloadCommandResult : evidenceDigest

      WorkloadCommandResult : machineId

      WorkloadCommandResult : sanitizedEvidence

      WorkloadCommandResult : status





        WorkloadCommandResult --> "1" WorkloadCommandStatus : status
        click WorkloadCommandStatus href "../WorkloadCommandStatus/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [commandId](commandId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [status](status.md) | 1 <br/> [WorkloadCommandStatus](WorkloadCommandStatus.md) |  | direct |
| [sanitizedEvidence](sanitizedEvidence.md) | 0..1 <br/> [String](String.md) |  | direct |
| [evidenceDigest](evidenceDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [completedAt](completedAt.md) | 1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | EVENT |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:WorkloadCommandResult |
| native | jumo:WorkloadCommandResult |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkloadCommandResult
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EVENT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves
  the machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  commandId:
    name: commandId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminCommand
    - MachineAdminResult
    - WorkloadCommand
    - WorkloadCommandResult
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineHealthObservation
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - MachineEnrollmentResult
    - MachineAdminRequest
    - MachineAdminCommand
    - MachineAdminResult
    - WorkloadCommand
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    range: Identifier
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
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
    range: WorkloadCommandStatus
    required: true
  sanitizedEvidence:
    name: sanitizedEvidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - ConnectorTestResult
    range: string
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
  completedAt:
    name: completedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: WorkloadCommandResult
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EVENT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves
  the machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  commandId:
    name: commandId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminCommand
    - MachineAdminResult
    - WorkloadCommand
    - WorkloadCommandResult
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineHealthObservation
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - MachineEnrollmentResult
    - MachineAdminRequest
    - MachineAdminCommand
    - MachineAdminResult
    - WorkloadCommand
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    range: Identifier
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
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
    range: WorkloadCommandStatus
    required: true
  sanitizedEvidence:
    name: sanitizedEvidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - ConnectorTestResult
    range: string
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
  completedAt:
    name: completedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkloadCommandResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    range: string
    required: true

```
</details></div>