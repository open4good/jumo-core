---
search:
  boost: 10.0
---

# Class: CliInvocationRequest


_Structured WorkOrder execution invocation dispatched to a CLI worker container._



<div data-search-exclude markdown="1">



URI: [jumo:CliInvocationRequest](https://jumo.dev/schemas/jumo-v1/CliInvocationRequest)





```mermaid
 classDiagram
    class CliInvocationRequest
    click CliInvocationRequest href "../CliInvocationRequest/"
      CliInvocationRequest : gitCommitSha

      CliInvocationRequest : grantedCapabilities

      CliInvocationRequest : inputBinding





        CliInvocationRequest --> "0..1" SchemaBinding : inputBinding
        click SchemaBinding href "../SchemaBinding/"



      CliInvocationRequest : leaseId

      CliInvocationRequest : machineRef





        CliInvocationRequest --> "1" ContractReference : machineRef
        click ContractReference href "../ContractReference/"



      CliInvocationRequest : outputBinding





        CliInvocationRequest --> "0..1" SchemaBinding : outputBinding
        click SchemaBinding href "../SchemaBinding/"



      CliInvocationRequest : prompt

      CliInvocationRequest : releaseRef





        CliInvocationRequest --> "1" ContractReference : releaseRef
        click ContractReference href "../ContractReference/"



      CliInvocationRequest : timeoutSeconds

      CliInvocationRequest : tokenBudget

      CliInvocationRequest : toolRef





        CliInvocationRequest --> "1" ContractReference : toolRef
        click ContractReference href "../ContractReference/"



      CliInvocationRequest : turnLimit

      CliInvocationRequest : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [workOrderId](workOrderId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [leaseId](leaseId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [machineRef](machineRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [toolRef](toolRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [releaseRef](releaseRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [gitCommitSha](gitCommitSha.md) | 1 <br/> [String](String.md) |  | direct |
| [prompt](prompt.md) | 1 <br/> [String](String.md) |  | direct |
| [inputBinding](inputBinding.md) | 0..1 <br/> [SchemaBinding](SchemaBinding.md) |  | direct |
| [outputBinding](outputBinding.md) | 0..1 <br/> [SchemaBinding](SchemaBinding.md) |  | direct |
| [turnLimit](turnLimit.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [tokenBudget](tokenBudget.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [timeoutSeconds](timeoutSeconds.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [grantedCapabilities](grantedCapabilities.md) | * <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | COMMAND |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:CliInvocationRequest |
| native | jumo:CliInvocationRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CliInvocationRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: Structured WorkOrder execution invocation dispatched to a CLI worker
  container.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
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
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
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
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - ConnectorSessionBinding
    range: ContractReference
    required: true
    inlined: true
  toolRef:
    name: toolRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: ContractReference
    required: true
    inlined: true
  releaseRef:
    name: releaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliInstallationDesiredState
    - CliInvocationRequest
    range: ContractReference
    required: true
    inlined: true
  gitCommitSha:
    name: gitCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - ExecutionCellLease
    - CliInvocationRequest
    range: string
    required: true
  prompt:
    name: prompt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: string
    required: true
  inputBinding:
    name: inputBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: SchemaBinding
    inlined: true
  outputBinding:
    name: outputBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: SchemaBinding
    inlined: true
  turnLimit:
    name: turnLimit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: integer
  tokenBudget:
    name: tokenBudget
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: integer
  timeoutSeconds:
    name: timeoutSeconds
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - MachineAdminCommand
    - CliInvocationRequest
    range: integer
  grantedCapabilities:
    name: grantedCapabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: string
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: CliInvocationRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: Structured WorkOrder execution invocation dispatched to a CLI worker
  container.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
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
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
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
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - ConnectorSessionBinding
    range: ContractReference
    required: true
    inlined: true
  toolRef:
    name: toolRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: ContractReference
    required: true
    inlined: true
  releaseRef:
    name: releaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - CliInstallationDesiredState
    - CliInvocationRequest
    range: ContractReference
    required: true
    inlined: true
  gitCommitSha:
    name: gitCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - ExecutionCellLease
    - CliInvocationRequest
    range: string
    required: true
  prompt:
    name: prompt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: string
    required: true
  inputBinding:
    name: inputBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: SchemaBinding
    inlined: true
  outputBinding:
    name: outputBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: SchemaBinding
    inlined: true
  turnLimit:
    name: turnLimit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: integer
  tokenBudget:
    name: tokenBudget
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: integer
  timeoutSeconds:
    name: timeoutSeconds
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInvocationRequest
    domain_of:
    - MachineAdminCommand
    - CliInvocationRequest
    range: integer
  grantedCapabilities:
    name: grantedCapabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInvocationRequest
    domain_of:
    - CliInvocationRequest
    range: string
    multivalued: true

```
</details></div>