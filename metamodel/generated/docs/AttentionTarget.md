---
search:
  boost: 10.0
---

# Class: AttentionTarget

<div data-search-exclude markdown="1">



URI: [jumo:AttentionTarget](https://jumo.dev/schemas/jumo-v1/AttentionTarget)





```mermaid
 classDiagram
    class AttentionTarget
    click AttentionTarget href "../AttentionTarget/"
      AttentionTarget : realmRef

      AttentionTarget : subjectKind





        AttentionTarget --> "1" AttentionTargetSubjectKind : subjectKind
        click AttentionTargetSubjectKind href "../AttentionTargetSubjectKind/"



      AttentionTarget : subjectRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [realmRef](realmRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [subjectKind](subjectKind.md) | 1 <br/> [AttentionTargetSubjectKind](AttentionTargetSubjectKind.md) |  | direct |
| [subjectRef](subjectRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AttentionItemSpec](AttentionItemSpec.md) | [target](target.md) | range | [AttentionTarget](AttentionTarget.md) |












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
| self | jumo:AttentionTarget |
| native | jumo:AttentionTarget |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AttentionTarget
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
  realmRef:
    name: realmRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    - ConnectorSessionBinding
    range: Identifier
    required: true
  subjectKind:
    name: subjectKind
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    range: AttentionTargetSubjectKind
    required: true
  subjectRef:
    name: subjectRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    range: Identifier
    required: true

```
</details>

### Induced

<details>
```yaml
name: AttentionTarget
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
  realmRef:
    name: realmRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    - ConnectorSessionBinding
    range: Identifier
    required: true
  subjectKind:
    name: subjectKind
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    range: AttentionTargetSubjectKind
    required: true
  subjectRef:
    name: subjectRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AttentionTarget
    domain_of:
    - AttentionTarget
    range: Identifier
    required: true

```
</details></div>