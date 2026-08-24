---
search:
  boost: 10.0
---

# Class: CliInstallationObservation


_Observed installation and doctor health status of a CLI tool on a machine._



<div data-search-exclude markdown="1">



URI: [jumo:CliInstallationObservation](https://jumo.dev/schemas/jumo-v1/CliInstallationObservation)





```mermaid
 classDiagram
    class CliInstallationObservation
    click CliInstallationObservation href "../CliInstallationObservation/"
      CliInstallationObservation : doctorSummary

      CliInstallationObservation : installedReleaseRef

      CliInstallationObservation : machineRef

      CliInstallationObservation : observedAt

      CliInstallationObservation : status

      CliInstallationObservation : toolRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [machineRef](machineRef.md) | 1 <br/> [String](String.md) |  | direct |
| [toolRef](toolRef.md) | 1 <br/> [String](String.md) |  | direct |
| [installedReleaseRef](installedReleaseRef.md) | 1 <br/> [String](String.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [doctorSummary](doctorSummary.md) | 0..1 <br/> [String](String.md) |  | direct |
| [observedAt](observedAt.md) | 1 <br/> [String](String.md) |  | direct |















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
| self | jumo:CliInstallationObservation |
| native | jumo:CliInstallationObservation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CliInstallationObservation
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
description: Observed installation and doctor health status of a CLI tool on a machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - ConnectorSessionBinding
    range: string
    required: true
  toolRef:
    name: toolRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: string
    required: true
  installedReleaseRef:
    name: installedReleaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationObservation
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
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
  doctorSummary:
    name: doctorSummary
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationObservation
    range: string
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: CliInstallationObservation
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
description: Observed installation and doctor health status of a CLI tool on a machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - ConnectorSessionBinding
    range: string
    required: true
  toolRef:
    name: toolRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: string
    required: true
  installedReleaseRef:
    name: installedReleaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationObservation
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
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
  doctorSummary:
    name: doctorSummary
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationObservation
    domain_of:
    - CliInstallationObservation
    range: string
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationObservation
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: string
    required: true

```
</details></div>