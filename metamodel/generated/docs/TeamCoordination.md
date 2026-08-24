---
search:
  boost: 10.0
---

# Class: TeamCoordination

<div data-search-exclude markdown="1">



URI: [jumo:TeamCoordination](https://jumo.dev/schemas/jumo-v1/TeamCoordination)





```mermaid
 classDiagram
    class TeamCoordination
    click TeamCoordination href "../TeamCoordination/"
      TeamCoordination : leadRoleDefinitionRef





        TeamCoordination --> "0..1" ContractReference : leadRoleDefinitionRef
        click ContractReference href "../ContractReference/"



      TeamCoordination : mechanisms





        TeamCoordination --> "1..*" CoordinationMechanismBinding : mechanisms
        click CoordinationMechanismBinding href "../CoordinationMechanismBinding/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [mechanisms](mechanisms.md) | 1..* <br/> [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |  | direct |
| [leadRoleDefinitionRef](leadRoleDefinitionRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Required when any mechanism binding uses DIRECT_SUPERVISION; must resolve to ... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [TeamSpecBody](TeamSpecBody.md) | [coordination](coordination.md) | range | [TeamCoordination](TeamCoordination.md) |












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
| self | jumo:TeamCoordination |
| native | jumo:TeamCoordination |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: TeamCoordination
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
  mechanisms:
    name: mechanisms
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamCoordination
    domain_of:
    - TeamCoordination
    - CoordinationProfileSpec
    range: CoordinationMechanismBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  leadRoleDefinitionRef:
    name: leadRoleDefinitionRef
    description: Required when any mechanism binding uses DIRECT_SUPERVISION; must
      resolve to a role leaf of this team. Conditional requiredness moves to Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamCoordination
    domain_of:
    - TeamCoordination
    range: ContractReference
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: TeamCoordination
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
  mechanisms:
    name: mechanisms
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamCoordination
    domain_of:
    - TeamCoordination
    - CoordinationProfileSpec
    range: CoordinationMechanismBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  leadRoleDefinitionRef:
    name: leadRoleDefinitionRef
    description: Required when any mechanism binding uses DIRECT_SUPERVISION; must
      resolve to a role leaf of this team. Conditional requiredness moves to Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamCoordination
    domain_of:
    - TeamCoordination
    range: ContractReference
    inlined: true

```
</details></div>