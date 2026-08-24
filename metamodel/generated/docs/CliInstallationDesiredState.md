---
search:
  boost: 10.0
---

# Class: CliInstallationDesiredState


_Desired CLI installation state on a specific machine._



<div data-search-exclude markdown="1">



URI: [jumo:CliInstallationDesiredState](https://jumo.dev/schemas/jumo-v1/CliInstallationDesiredState)





```mermaid
 classDiagram
    class CliInstallationDesiredState
    click CliInstallationDesiredState href "../CliInstallationDesiredState/"
      CliInstallationDesiredState : desiredState

      CliInstallationDesiredState : machineRef

      CliInstallationDesiredState : releaseRef

      CliInstallationDesiredState : toolRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [machineRef](machineRef.md) | 1 <br/> [String](String.md) |  | direct |
| [toolRef](toolRef.md) | 1 <br/> [String](String.md) |  | direct |
| [releaseRef](releaseRef.md) | 1 <br/> [String](String.md) |  | direct |
| [desiredState](desiredState.md) | 1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:CliInstallationDesiredState |
| native | jumo:CliInstallationDesiredState |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CliInstallationDesiredState
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
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
description: Desired CLI installation state on a specific machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationDesiredState
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
    owner: CliInstallationDesiredState
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: string
    required: true
  releaseRef:
    name: releaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationDesiredState
    domain_of:
    - CliInstallationDesiredState
    - CliInvocationRequest
    range: string
    required: true
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationDesiredState
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: CliInstallationDesiredState
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
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
description: Desired CLI installation state on a specific machine.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  machineRef:
    name: machineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationDesiredState
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
    owner: CliInstallationDesiredState
    domain_of:
    - CliReleaseSpec
    - CliInstallationDesiredState
    - CliInstallationObservation
    - CliInvocationRequest
    - CliUsageObservation
    range: string
    required: true
  releaseRef:
    name: releaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CliInstallationDesiredState
    domain_of:
    - CliInstallationDesiredState
    - CliInvocationRequest
    range: string
    required: true
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CliInstallationDesiredState
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: string
    required: true

```
</details></div>