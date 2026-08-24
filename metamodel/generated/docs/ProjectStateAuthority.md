---
search:
  boost: 10.0
---

# Class: ProjectStateAuthority

<div data-search-exclude markdown="1">



URI: [jumo:ProjectStateAuthority](https://jumo.dev/schemas/jumo-v1/ProjectStateAuthority)





```mermaid
 classDiagram
    class ProjectStateAuthority
    click ProjectStateAuthority href "../ProjectStateAuthority/"
      ProjectStateAuthority : businessState





        ProjectStateAuthority --> "1" BusinessStateStore : businessState
        click BusinessStateStore href "../BusinessStateStore/"



      ProjectStateAuthority : desiredState

      ProjectStateAuthority : executionState





        ProjectStateAuthority --> "1" ExecutionStateStore : executionState
        click ExecutionStateStore href "../ExecutionStateStore/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [desiredState](desiredState.md) | 1 <br/> [String](String.md) |  | direct |
| [businessState](businessState.md) | 1 <br/> [BusinessStateStore](BusinessStateStore.md) |  | direct |
| [executionState](executionState.md) | 1 <br/> [ExecutionStateStore](ExecutionStateStore.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) | [authority](authority.md) | range | [ProjectStateAuthority](ProjectStateAuthority.md) |












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
| self | jumo:ProjectStateAuthority |
| native | jumo:ProjectStateAuthority |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProjectStateAuthority
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
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: string
    required: true
    equals_string: git
  businessState:
    name: businessState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    range: BusinessStateStore
    required: true
  executionState:
    name: executionState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    range: ExecutionStateStore
    required: true

```
</details>

### Induced

<details>
```yaml
name: ProjectStateAuthority
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
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: string
    required: true
    equals_string: git
  businessState:
    name: businessState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    range: BusinessStateStore
    required: true
  executionState:
    name: executionState
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectStateAuthority
    domain_of:
    - ProjectStateAuthority
    range: ExecutionStateStore
    required: true

```
</details></div>