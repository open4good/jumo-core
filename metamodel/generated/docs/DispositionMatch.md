---
search:
  boost: 10.0
---

# Class: DispositionMatch


_minProperties:1 in the source (at least one match field present) moves to Rego._



<div data-search-exclude markdown="1">



URI: [jumo:DispositionMatch](https://jumo.dev/schemas/jumo-v1/DispositionMatch)





```mermaid
 classDiagram
    class DispositionMatch
    click DispositionMatch href "../DispositionMatch/"
      DispositionMatch : addressedRoleRefs

      DispositionMatch : addressedTeamRefs

      DispositionMatch : intentKinds





        DispositionMatch --> "*" IntentKind : intentKinds
        click IntentKind href "../IntentKind/"



      DispositionMatch : otherwise


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [addressedRoleRefs](addressedRoleRefs.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [addressedTeamRefs](addressedTeamRefs.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [intentKinds](intentKinds.md) | * <br/> [IntentKind](IntentKind.md) |  | direct |
| [otherwise](otherwise.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [DispositionRule](DispositionRule.md) | [match](match.md) | range | [DispositionMatch](DispositionMatch.md) |












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
| self | jumo:DispositionMatch |
| native | jumo:DispositionMatch |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DispositionMatch
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
description: minProperties:1 in the source (at least one match field present) moves
  to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  addressedRoleRefs:
    name: addressedRoleRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: Identifier
    multivalued: true
  addressedTeamRefs:
    name: addressedTeamRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: Identifier
    multivalued: true
  intentKinds:
    name: intentKinds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: IntentKind
    multivalued: true
  otherwise:
    name: otherwise
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: DispositionMatch
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
description: minProperties:1 in the source (at least one match field present) moves
  to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  addressedRoleRefs:
    name: addressedRoleRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: Identifier
    multivalued: true
  addressedTeamRefs:
    name: addressedTeamRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: Identifier
    multivalued: true
  intentKinds:
    name: intentKinds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: IntentKind
    multivalued: true
  otherwise:
    name: otherwise
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionMatch
    domain_of:
    - DispositionMatch
    range: boolean

```
</details></div>