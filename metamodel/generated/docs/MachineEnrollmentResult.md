---
search:
  boost: 10.0
---

# Class: MachineEnrollmentResult


_Result of a machine enrollment challenge containing issued mTLS certificates._



<div data-search-exclude markdown="1">



URI: [jumo:MachineEnrollmentResult](https://jumo.dev/schemas/jumo-v1/MachineEnrollmentResult)





```mermaid
 classDiagram
    class MachineEnrollmentResult
    click MachineEnrollmentResult href "../MachineEnrollmentResult/"
      MachineEnrollmentResult : caCertificatePem

      MachineEnrollmentResult : certificatePem

      MachineEnrollmentResult : enrolledAt

      MachineEnrollmentResult : machineId

      MachineEnrollmentResult : status


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [certificatePem](certificatePem.md) | 1 <br/> [String](String.md) |  | direct |
| [caCertificatePem](caCertificatePem.md) | 1 <br/> [String](String.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [enrolledAt](enrolledAt.md) | 1 <br/> [String](String.md) |  | direct |















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
| self | jumo:MachineEnrollmentResult |
| native | jumo:MachineEnrollmentResult |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MachineEnrollmentResult
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
description: Result of a machine enrollment challenge containing issued mTLS certificates.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineEnrollmentResult
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
  certificatePem:
    name: certificatePem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true
  caCertificatePem:
    name: caCertificatePem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineEnrollmentResult
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
  enrolledAt:
    name: enrolledAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: MachineEnrollmentResult
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
description: Result of a machine enrollment challenge containing issued mTLS certificates.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineEnrollmentResult
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
  certificatePem:
    name: certificatePem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true
  caCertificatePem:
    name: caCertificatePem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineEnrollmentResult
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
  enrolledAt:
    name: enrolledAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineEnrollmentResult
    domain_of:
    - MachineEnrollmentResult
    range: string
    required: true

```
</details></div>