---
search:
  boost: 10.0
---

# Class: MachineAdminRequest


_Web administration request to dispatch an allowlisted Ansible playbook to a machine._



<div data-search-exclude markdown="1">



URI: [jumo:MachineAdminRequest](https://jumo.dev/schemas/jumo-v1/MachineAdminRequest)





```mermaid
 classDiagram
    class MachineAdminRequest
    click MachineAdminRequest href "../MachineAdminRequest/"
      MachineAdminRequest : machineId

      MachineAdminRequest : playbookRef

      MachineAdminRequest : stepUpProof

      MachineAdminRequest : variables





        MachineAdminRequest --> "0..1" SchemaBoundPayload : variables
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      MachineAdminRequest : workOrderId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [machineId](machineId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [playbookRef](playbookRef.md) | 1 <br/> [String](String.md) |  | direct |
| [variables](variables.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [workOrderId](workOrderId.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |
| [stepUpProof](stepUpProof.md) | 0..1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | COMMAND |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:MachineAdminRequest |
| native | jumo:MachineAdminRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MachineAdminRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Web administration request to dispatch an allowlisted Ansible playbook
  to a machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminRequest
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
  playbookRef:
    name: playbookRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    range: string
    required: true
  variables:
    name: variables
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminRequest
    domain_of:
    - PromptTemplateSpec
    - MachineAdminRequest
    - MachineAdminCommand
    range: SchemaBoundPayload
    inlined: true
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
  stepUpProof:
    name: stepUpProof
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    range: string

```
</details>

### Induced

<details>
```yaml
name: MachineAdminRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
  jumo.audience:
    tag: jumo.audience
    value: REALM_PRIVATE
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Web administration request to dispatch an allowlisted Ansible playbook
  to a machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineId:
    name: machineId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminRequest
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
  playbookRef:
    name: playbookRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    range: string
    required: true
  variables:
    name: variables
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineAdminRequest
    domain_of:
    - PromptTemplateSpec
    - MachineAdminRequest
    - MachineAdminCommand
    range: SchemaBoundPayload
    inlined: true
  workOrderId:
    name: workOrderId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - CliInvocationEvent
    - CliInvocationResult
    range: Identifier
  stepUpProof:
    name: stepUpProof
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineAdminRequest
    domain_of:
    - MachineAdminRequest
    range: string

```
</details></div>