---
search:
  boost: 10.0
---

# Class: TeamMember


_Discriminated union (roleMember | teamMember) in the source schema. Modeled as one class; exactly one of roleDefinitionRef/teamSpecRef is expected (Rego)._



<div data-search-exclude markdown="1">



URI: [jumo:TeamMember](https://jumo.dev/schemas/jumo-v1/TeamMember)





```mermaid
 classDiagram
    class TeamMember
    click TeamMember href "../TeamMember/"
      TeamMember : independenceGroup

      TeamMember : role

      TeamMember : roleDefinitionRef





        TeamMember --> "0..1" ContractReference : roleDefinitionRef
        click ContractReference href "../ContractReference/"



      TeamMember : teamSpecRef





        TeamMember --> "0..1" ContractReference : teamSpecRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [roleDefinitionRef](roleDefinitionRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [teamSpecRef](teamSpecRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [role](role.md) | 0..1 <br/> [String](String.md) |  | direct |
| [independenceGroup](independenceGroup.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [TeamSpecBody](TeamSpecBody.md) | [members](members.md) | range | [TeamMember](TeamMember.md) |












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
| self | jumo:TeamMember |
| native | jumo:TeamMember |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: TeamMember
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
description: Discriminated union (roleMember | teamMember) in the source schema. Modeled
  as one class; exactly one of roleDefinitionRef/teamSpecRef is expected (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamMember
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    inlined: true
  teamSpecRef:
    name: teamSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamMember
    domain_of:
    - TeamMember
    - WorkOrderSpec
    range: ContractReference
    inlined: true
  role:
    name: role
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamMember
    domain_of:
    - TeamMember
    - OrganizationAccessBindingSpec
    range: string
    pattern: ^.{3,}$
  independenceGroup:
    name: independenceGroup
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamMember
    domain_of:
    - RoleDefinitionSpec
    - TeamMember
    - ProviderAccountSpec
    - ProviderPlatformSpec
    range: Identifier

```
</details>

### Induced

<details>
```yaml
name: TeamMember
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
description: Discriminated union (roleMember | teamMember) in the source schema. Modeled
  as one class; exactly one of roleDefinitionRef/teamSpecRef is expected (Rego).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamMember
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    inlined: true
  teamSpecRef:
    name: teamSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamMember
    domain_of:
    - TeamMember
    - WorkOrderSpec
    range: ContractReference
    inlined: true
  role:
    name: role
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamMember
    domain_of:
    - TeamMember
    - OrganizationAccessBindingSpec
    range: string
    pattern: ^.{3,}$
  independenceGroup:
    name: independenceGroup
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamMember
    domain_of:
    - RoleDefinitionSpec
    - TeamMember
    - ProviderAccountSpec
    - ProviderPlatformSpec
    range: Identifier

```
</details></div>