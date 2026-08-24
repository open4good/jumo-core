---
search:
  boost: 10.0
---

# Class: WorkerIsolation

<div data-search-exclude markdown="1">



URI: [jumo:WorkerIsolation](https://jumo.dev/schemas/jumo-v1/WorkerIsolation)





```mermaid
 classDiagram
    class WorkerIsolation
    click WorkerIsolation href "../WorkerIsolation/"
      WorkerIsolation : containerRuntimeSocket

      WorkerIsolation : limits





        WorkerIsolation --> "1" WorkerIsolationLimits : limits
        click WorkerIsolationLimits href "../WorkerIsolationLimits/"



      WorkerIsolation : linuxCapabilities

      WorkerIsolation : network





        WorkerIsolation --> "1" WorkerNetworkIsolation : network
        click WorkerNetworkIsolation href "../WorkerNetworkIsolation/"



      WorkerIsolation : privilegeEscalation

      WorkerIsolation : rootFilesystem

      WorkerIsolation : workspace





        WorkerIsolation --> "1" WorkerWorkspaceMode : workspace
        click WorkerWorkspaceMode href "../WorkerWorkspaceMode/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [network](network.md) | 1 <br/> [WorkerNetworkIsolation](WorkerNetworkIsolation.md) | Open egress is absent because it would let a CLI re-acquire authority outside... | direct |
| [rootFilesystem](rootFilesystem.md) | 1 <br/> [String](String.md) |  | direct |
| [linuxCapabilities](linuxCapabilities.md) | 1 <br/> [String](String.md) |  | direct |
| [privilegeEscalation](privilegeEscalation.md) | 1 <br/> [String](String.md) |  | direct |
| [containerRuntimeSocket](containerRuntimeSocket.md) | 1 <br/> [String](String.md) | A runtime socket mount hands the container authority over its own sandbox | direct |
| [workspace](workspace.md) | 1 <br/> [WorkerWorkspaceMode](WorkerWorkspaceMode.md) |  | direct |
| [limits](limits.md) | 1 <br/> [WorkerIsolationLimits](WorkerIsolationLimits.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) | [isolation](isolation.md) | range | [WorkerIsolation](WorkerIsolation.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:WorkerIsolation |
| native | jumo:WorkerIsolation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerIsolation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  network:
    name: network
    description: Open egress is absent because it would let a CLI re-acquire authority
      outside Jumo's grant.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolation
    domain_of:
    - ExecutionMachineSpec
    - WorkerIsolation
    range: WorkerNetworkIsolation
    required: true
  rootFilesystem:
    name: rootFilesystem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: READ_ONLY
  linuxCapabilities:
    name: linuxCapabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: DROP_ALL
  privilegeEscalation:
    name: privilegeEscalation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: DENIED
  containerRuntimeSocket:
    name: containerRuntimeSocket
    description: A runtime socket mount hands the container authority over its own
      sandbox.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: ABSENT
  workspace:
    name: workspace
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: WorkerWorkspaceMode
    required: true
  limits:
    name: limits
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolation
    domain_of:
    - WorkerRequirementProfileSpec
    - ResourceBudgetSpec
    - WorkerIsolation
    range: WorkerIsolationLimits
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: WorkerIsolation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  network:
    name: network
    description: Open egress is absent because it would let a CLI re-acquire authority
      outside Jumo's grant.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolation
    domain_of:
    - ExecutionMachineSpec
    - WorkerIsolation
    range: WorkerNetworkIsolation
    required: true
  rootFilesystem:
    name: rootFilesystem
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: READ_ONLY
  linuxCapabilities:
    name: linuxCapabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: DROP_ALL
  privilegeEscalation:
    name: privilegeEscalation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: DENIED
  containerRuntimeSocket:
    name: containerRuntimeSocket
    description: A runtime socket mount hands the container authority over its own
      sandbox.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: string
    required: true
    equals_string: ABSENT
  workspace:
    name: workspace
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolation
    domain_of:
    - WorkerIsolation
    range: WorkerWorkspaceMode
    required: true
  limits:
    name: limits
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolation
    domain_of:
    - WorkerRequirementProfileSpec
    - ResourceBudgetSpec
    - WorkerIsolation
    range: WorkerIsolationLimits
    required: true
    inlined: true

```
</details></div>