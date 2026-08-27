---
search:
  boost: 10.0
---

# Class: MachineHealthObservation


_Observed real-time health and load status of an execution machine._



<div data-search-exclude markdown="1">



URI: [jumo:MachineHealthObservation](https://jumo.dev/schemas/jumo-v1/MachineHealthObservation)





```mermaid
 classDiagram
    class MachineHealthObservation
    click MachineHealthObservation href "../MachineHealthObservation/"
      MachineHealthObservation : activeLeasesCount

      MachineHealthObservation : diskUsagePercent

      MachineHealthObservation : lastHeartbeatAt

      MachineHealthObservation : machineId

      MachineHealthObservation : memoryUsagePercent

      MachineHealthObservation : status

      MachineHealthObservation : systemLoad


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [lastHeartbeatAt](lastHeartbeatAt.md) | 1 <br/> [String](String.md) |  | direct |
| [activeLeasesCount](activeLeasesCount.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [systemLoad](systemLoad.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [memoryUsagePercent](memoryUsagePercent.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [diskUsagePercent](diskUsagePercent.md) | 0..1 <br/> [Float](Float.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | OBSERVATION |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:MachineHealthObservation |
| native | jumo:MachineHealthObservation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MachineHealthObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: OBSERVATION
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
description: Observed real-time health and load status of an execution machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
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
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineHealthObservation
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
  lastHeartbeatAt:
    name: lastHeartbeatAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: string
    required: true
  activeLeasesCount:
    name: activeLeasesCount
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: integer
  systemLoad:
    name: systemLoad
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float
  memoryUsagePercent:
    name: memoryUsagePercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float
  diskUsagePercent:
    name: diskUsagePercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float

```
</details>

### Induced

<details>
```yaml
name: MachineHealthObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: OBSERVATION
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
description: Observed real-time health and load status of an execution machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
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
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineHealthObservation
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
  lastHeartbeatAt:
    name: lastHeartbeatAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: string
    required: true
  activeLeasesCount:
    name: activeLeasesCount
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: integer
  systemLoad:
    name: systemLoad
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float
  memoryUsagePercent:
    name: memoryUsagePercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float
  diskUsagePercent:
    name: diskUsagePercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHealthObservation
    domain_of:
    - MachineHealthObservation
    range: float

```
</details></div>