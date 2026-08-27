---
search:
  boost: 10.0
---

# Class: MachineAdminCommand


_Ansible playbook execution command sent to an enrolled machine._



<div data-search-exclude markdown="1">



URI: [jumo:MachineAdminCommand](https://jumo.dev/schemas/jumo-v1/MachineAdminCommand)





```mermaid
 classDiagram
    class MachineAdminCommand
    click MachineAdminCommand href "../MachineAdminCommand/"
      MachineAdminCommand : approvalReference

      MachineAdminCommand : commandId

      MachineAdminCommand : contractRevision

      MachineAdminCommand : expiresAt

      MachineAdminCommand : issuedAt

      MachineAdminCommand : machineId

      MachineAdminCommand : playbookDigest

      MachineAdminCommand : playbookRef

      MachineAdminCommand : timeoutSeconds

      MachineAdminCommand : variables





        MachineAdminCommand --> "0..1" SchemaBoundPayload : variables
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      MachineAdminCommand : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [commandId](commandId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [workOrderId](workOrderId.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |
| [contractRevision](contractRevision.md) | 0..1 <br/> [String](String.md) |  | direct |
| [playbookRef](playbookRef.md) | 1 <br/> [String](String.md) | The playbook's physical execution path (MachineAdminPlaybookSpec | direct |
| [playbookDigest](playbookDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [variables](variables.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [approvalReference](approvalReference.md) | 0..1 <br/> [String](String.md) |  | direct |
| [issuedAt](issuedAt.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [String](String.md) |  | direct |
| [timeoutSeconds](timeoutSeconds.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
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
| self | jumo:MachineAdminCommand |
| native | jumo:MachineAdminCommand |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MachineAdminCommand
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
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
description: Ansible playbook execution command sent to an enrolled machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  commandId:
    name: commandId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
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
    owner: MachineAdminCommand
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
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
  contractRevision:
    name: contractRevision
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - WorkOrderSpec
    - MachineAdminCommand
    - WorkloadCommand
    - McpInventorySnapshot
    range: string
  playbookRef:
    name: playbookRef
    description: The playbook's physical execution path (MachineAdminPlaybookSpec.playbookPath),
      not a second contract reference -- the control plane resolves the MachineAdminRequest's
      ContractReference to a MachineAdminPlaybook once and forwards the resolved path
      so the machine-agent has a direct, unambiguous execution instruction rather
      than needing corpus access itself. ADR-0045 decision 4 treats physical paths
      as non-contractual scalars.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    range: string
    required: true
  playbookDigest:
    name: playbookDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminPlaybookSpec
    - MachineAdminCommand
    range: string
    required: true
  variables:
    name: variables
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - PromptTemplateSpec
    - MachineAdminRequest
    - MachineAdminCommand
    range: SchemaBoundPayload
    inlined: true
  approvalReference:
    name: approvalReference
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    range: string
  issuedAt:
    name: issuedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    - WorkloadCommand
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
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
    required: true
  timeoutSeconds:
    name: timeoutSeconds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    - CliInvocationRequest
    range: integer

```
</details>

### Induced

<details>
```yaml
name: MachineAdminCommand
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
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
description: Ansible playbook execution command sent to an enrolled machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  commandId:
    name: commandId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
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
    owner: MachineAdminCommand
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
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
  contractRevision:
    name: contractRevision
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - WorkOrderSpec
    - MachineAdminCommand
    - WorkloadCommand
    - McpInventorySnapshot
    range: string
  playbookRef:
    name: playbookRef
    description: The playbook's physical execution path (MachineAdminPlaybookSpec.playbookPath),
      not a second contract reference -- the control plane resolves the MachineAdminRequest's
      ContractReference to a MachineAdminPlaybook once and forwards the resolved path
      so the machine-agent has a direct, unambiguous execution instruction rather
      than needing corpus access itself. ADR-0045 decision 4 treats physical paths
      as non-contractual scalars.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    range: string
    required: true
  playbookDigest:
    name: playbookDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminPlaybookSpec
    - MachineAdminCommand
    range: string
    required: true
  variables:
    name: variables
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
    domain_of:
    - PromptTemplateSpec
    - MachineAdminRequest
    - MachineAdminCommand
    range: SchemaBoundPayload
    inlined: true
  approvalReference:
    name: approvalReference
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    range: string
  issuedAt:
    name: issuedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    - WorkloadCommand
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminCommand
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
    required: true
  timeoutSeconds:
    name: timeoutSeconds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminCommand
    domain_of:
    - MachineAdminCommand
    - CliInvocationRequest
    range: integer

```
</details></div>