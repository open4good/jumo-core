---
search:
  boost: 10.0
---

# Class: CliInvocationResult


_Sanitized final output payload, exit code, and evidence digest from a CLI execution._



<div data-search-exclude markdown="1">



URI: [jumo:CliInvocationResult](https://jumo.dev/schemas/jumo-v1/CliInvocationResult)





```mermaid
 classDiagram
    class CliInvocationResult
    click CliInvocationResult href "../CliInvocationResult/"
      CliInvocationResult : completedAt

      CliInvocationResult : evidenceDigest

      CliInvocationResult : exitCode

      CliInvocationResult : sanitizedOutputPayload





        CliInvocationResult --> "0..1" SchemaBoundPayload : sanitizedOutputPayload
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      CliInvocationResult : status

      CliInvocationResult : tokensConsumed

      CliInvocationResult : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [workOrderId](workOrderId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [exitCode](exitCode.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [sanitizedOutputPayload](sanitizedOutputPayload.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [evidenceDigest](evidenceDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [tokensConsumed](tokensConsumed.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
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
| self | jumo:CliInvocationResult |
| native | jumo:CliInvocationResult |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CliInvocationResult
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
description: Sanitized final output payload, exit code, and evidence digest from a
  CLI execution.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
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
    required: true
  exitCode:
    name: exitCode
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminResult
    - CliInvocationResult
    range: integer
    required: true
  sanitizedOutputPayload:
    name: sanitizedOutputPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationResult
    domain_of:
    - CliInvocationResult
    range: SchemaBoundPayload
    inlined: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true
  tokensConsumed:
    name: tokensConsumed
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationResult
    domain_of:
    - CliInvocationResult
    range: integer
  completedAt:
    name: completedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
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
name: CliInvocationResult
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
description: Sanitized final output payload, exit code, and evidence digest from a
  CLI execution.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
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
    required: true
  exitCode:
    name: exitCode
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminResult
    - CliInvocationResult
    range: integer
    required: true
  sanitizedOutputPayload:
    name: sanitizedOutputPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationResult
    domain_of:
    - CliInvocationResult
    range: SchemaBoundPayload
    inlined: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true
  tokensConsumed:
    name: tokensConsumed
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationResult
    domain_of:
    - CliInvocationResult
    range: integer
  completedAt:
    name: completedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    range: string
    required: true

```
</details></div>