---
search:
  boost: 10.0
---

# Class: KitReference

<div data-search-exclude markdown="1">



URI: [jumo:KitReference](https://jumo.dev/schemas/jumo-v1/KitReference)





```mermaid
 classDiagram
    class KitReference
    click KitReference href "../KitReference/"
      KitReference : commit

      KitReference : release

      KitReference : repository


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [repository](repository.md) | 1 <br/> [String](String.md) |  | direct |
| [commit](commit.md) | 1 <br/> [String](String.md) |  | direct |
| [release](release.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [KitBindingSpec](KitBindingSpec.md) | [kit](kit.md) | range | [KitReference](KitReference.md) |












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
| self | jumo:KitReference |
| native | jumo:KitReference |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitReference
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
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReference
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReference
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  release:
    name: release
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReference
    domain_of:
    - KitReference
    range: string
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: KitReference
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
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReference
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReference
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  release:
    name: release
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReference
    domain_of:
    - KitReference
    range: string
    pattern: ^.{1,}$

```
</details></div>