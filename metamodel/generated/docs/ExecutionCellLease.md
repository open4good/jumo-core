---
search:
  boost: 10.0
---

# Class: ExecutionCellLease


_Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and contract digest._



<div data-search-exclude markdown="1">



URI: [jumo:ExecutionCellLease](https://jumo.dev/schemas/jumo-v1/ExecutionCellLease)





```mermaid
 classDiagram
    class ExecutionCellLease
    click ExecutionCellLease href "../ExecutionCellLease/"
      ExecutionCellLease : contractDigest

      ExecutionCellLease : delegatedSecretBindings

      ExecutionCellLease : expiresAt

      ExecutionCellLease : gitCommitSha

      ExecutionCellLease : grantedAt

      ExecutionCellLease : leaseId

      ExecutionCellLease : machineId

      ExecutionCellLease : status

      ExecutionCellLease : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [leaseId](leaseId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [workOrderId](workOrderId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [gitCommitSha](gitCommitSha.md) | 1 <br/> [String](String.md) |  | direct |
| [contractDigest](contractDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [grantedAt](grantedAt.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [String](String.md) |  | direct |
| [delegatedSecretBindings](delegatedSecretBindings.md) | * <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | EXECUTION_HISTORY |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ExecutionCellLease |
| native | jumo:ExecutionCellLease |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExecutionCellLease
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EXECUTION_HISTORY
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
description: Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA,
  and contract digest.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
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
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
    required: true
  gitCommitSha:
    name: gitCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    - CliInvocationRequest
    range: string
    required: true
  contractDigest:
    name: contractDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
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
  grantedAt:
    name: grantedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  delegatedSecretBindings:
    name: delegatedSecretBindings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: ExecutionCellLease
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EXECUTION_HISTORY
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
description: Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA,
  and contract digest.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
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
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
    required: true
  gitCommitSha:
    name: gitCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    - CliInvocationRequest
    range: string
    required: true
  contractDigest:
    name: contractDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
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
  grantedAt:
    name: grantedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellLease
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  delegatedSecretBindings:
    name: delegatedSecretBindings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellLease
    domain_of:
    - ExecutionCellLease
    range: string
    multivalued: true

```
</details></div>