---
search:
  boost: 10.0
---

# Class: DelegatedSecretGrant


_One response-wrapped OpenBao child token grant issued for a lease and SecretBinding pair (openbao-delegated-lease). Never carries the token or accessor value itself -- only an envelope-encrypted accessor ciphertext and its digest, for restart-safe revocation and audit._



<div data-search-exclude markdown="1">



URI: [jumo:DelegatedSecretGrant](https://jumo.dev/schemas/jumo-v1/DelegatedSecretGrant)





```mermaid
 classDiagram
    class DelegatedSecretGrant
    click DelegatedSecretGrant href "../DelegatedSecretGrant/"
      DelegatedSecretGrant : accessorCiphertext

      DelegatedSecretGrant : consumedAt

      DelegatedSecretGrant : expiresAt

      DelegatedSecretGrant : grantId

      DelegatedSecretGrant : issuedAt

      DelegatedSecretGrant : leaseId

      DelegatedSecretGrant : machineId

      DelegatedSecretGrant : openBaoAccessorDigest

      DelegatedSecretGrant : realmId

      DelegatedSecretGrant : revocationReason

      DelegatedSecretGrant : revokedAt

      DelegatedSecretGrant : secretBindingRef

      DelegatedSecretGrant : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [grantId](grantId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [leaseId](leaseId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [realmId](realmId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [workOrderId](workOrderId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [secretBindingRef](secretBindingRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [openBaoAccessorDigest](openBaoAccessorDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [accessorCiphertext](accessorCiphertext.md) | 1 <br/> [String](String.md) |  | direct |
| [issuedAt](issuedAt.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [String](String.md) |  | direct |
| [consumedAt](consumedAt.md) | 0..1 <br/> [String](String.md) |  | direct |
| [revokedAt](revokedAt.md) | 0..1 <br/> [String](String.md) |  | direct |
| [revocationReason](revocationReason.md) | 0..1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | EXECUTION_HISTORY |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | SECRET |
| jumo.boundary_eligible | False |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:DelegatedSecretGrant |
| native | jumo:DelegatedSecretGrant |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DelegatedSecretGrant
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
    value: SECRET
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: false
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: One response-wrapped OpenBao child token grant issued for a lease and
  SecretBinding pair (openbao-delegated-lease). Never carries the token or accessor
  value itself -- only an envelope-encrypted accessor ciphertext and its digest, for
  restart-safe revocation and audit.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  grantId:
    name: grantId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    - PlannedOperation
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: Identifier
    required: true
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
    range: Identifier
    required: true
  realmId:
    name: realmId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - AttentionSource
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - DelegatedSecretGrant
    - SessionPlan
    - ApiProblem
    - PolicyInput
    - ChangeSetProjection
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
    - DelegatedSecretGrant
    range: Identifier
    required: true
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
  secretBindingRef:
    name: secretBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    - McpRegistrySourceSpec
    - ProviderAccountSpec
    - WorkerModelAccess
    - ConnectorSessionBinding
    range: Identifier
    required: true
  openBaoAccessorDigest:
    name: openBaoAccessorDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
    required: true
  accessorCiphertext:
    name: accessorCiphertext
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
    required: true
  issuedAt:
    name: issuedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - MachineAdminCommand
    - WorkloadCommand
    - DelegatedSecretGrant
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  consumedAt:
    name: consumedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
  revokedAt:
    name: revokedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
  revocationReason:
    name: revocationReason
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string

```
</details>

### Induced

<details>
```yaml
name: DelegatedSecretGrant
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
    value: SECRET
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: false
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: One response-wrapped OpenBao child token grant issued for a lease and
  SecretBinding pair (openbao-delegated-lease). Never carries the token or accessor
  value itself -- only an envelope-encrypted accessor ciphertext and its digest, for
  restart-safe revocation and audit.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  grantId:
    name: grantId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    - PlannedOperation
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: Identifier
    required: true
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
    range: Identifier
    required: true
  realmId:
    name: realmId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - AttentionSource
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - DelegatedSecretGrant
    - SessionPlan
    - ApiProblem
    - PolicyInput
    - ChangeSetProjection
    range: Identifier
    required: true
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
    - DelegatedSecretGrant
    range: Identifier
    required: true
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
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
  secretBindingRef:
    name: secretBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    - McpRegistrySourceSpec
    - ProviderAccountSpec
    - WorkerModelAccess
    - ConnectorSessionBinding
    range: Identifier
    required: true
  openBaoAccessorDigest:
    name: openBaoAccessorDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
    required: true
  accessorCiphertext:
    name: accessorCiphertext
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
    required: true
  issuedAt:
    name: issuedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - MachineAdminCommand
    - WorkloadCommand
    - DelegatedSecretGrant
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: DelegatedSecretGrant
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  consumedAt:
    name: consumedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
  revokedAt:
    name: revokedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string
  revocationReason:
    name: revocationReason
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DelegatedSecretGrant
    domain_of:
    - DelegatedSecretGrant
    range: string

```
</details></div>