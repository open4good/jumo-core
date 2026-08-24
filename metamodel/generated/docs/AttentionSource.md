---
search:
  boost: 10.0
---

# Class: AttentionSource

<div data-search-exclude markdown="1">



URI: [jumo:AttentionSource](https://jumo.dev/schemas/jumo-v1/AttentionSource)





```mermaid
 classDiagram
    class AttentionSource
    click AttentionSource href "../AttentionSource/"
      AttentionSource : episodeId

      AttentionSource : journeyRunId

      AttentionSource : projectId

      AttentionSource : realmId

      AttentionSource : roleId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [realmId](realmId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [projectId](projectId.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |
| [roleId](roleId.md) | 0..1 <br/> [Identifier](Identifier.md) | The individual acting role this came from, never a team (ADR-0017) | direct |
| [episodeId](episodeId.md) | 0..1 <br/> [String](String.md) |  | direct |
| [journeyRunId](journeyRunId.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) | [source](source.md) | range | [AttentionSource](AttentionSource.md) |












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
| self | jumo:AttentionSource |
| native | jumo:AttentionSource |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AttentionSource
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
  realmId:
    name: realmId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - ApiProblem
    - PolicyInput
    - ChangeSetProjection
    range: Identifier
    required: true
  projectId:
    name: projectId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: Identifier
  roleId:
    name: roleId
    description: The individual acting role this came from, never a team (ADR-0017).
      Absent on ADMISSION_REFUSED.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: Identifier
  episodeId:
    name: episodeId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: string
    pattern: ^.{1,}$
  journeyRunId:
    name: journeyRunId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: string
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: AttentionSource
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
  realmId:
    name: realmId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    - MachineEnrollmentRequest
    - MachineEnrollmentChallenge
    - ApiProblem
    - PolicyInput
    - ChangeSetProjection
    range: Identifier
    required: true
  projectId:
    name: projectId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: Identifier
  roleId:
    name: roleId
    description: The individual acting role this came from, never a team (ADR-0017).
      Absent on ADMISSION_REFUSED.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: Identifier
  episodeId:
    name: episodeId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: string
    pattern: ^.{1,}$
  journeyRunId:
    name: journeyRunId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionSource
    domain_of:
    - AttentionSource
    range: string
    pattern: ^.{1,}$

```
</details></div>