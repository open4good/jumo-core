---
search:
  boost: 10.0
---

# Class: RealmChiefOfStaffRef

<div data-search-exclude markdown="1">



URI: [jumo:RealmChiefOfStaffRef](https://jumo.dev/schemas/jumo-v1/RealmChiefOfStaffRef)





```mermaid
 classDiagram
    class RealmChiefOfStaffRef
    click RealmChiefOfStaffRef href "../RealmChiefOfStaffRef/"
      RealmChiefOfStaffRef : chiefOfStaffProfileRef





        RealmChiefOfStaffRef --> "1" ContractReference : chiefOfStaffProfileRef
        click ContractReference href "../ContractReference/"



      RealmChiefOfStaffRef : roleDefinitionRef





        RealmChiefOfStaffRef --> "1" ContractReference : roleDefinitionRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [roleDefinitionRef](roleDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [chiefOfStaffProfileRef](chiefOfStaffProfileRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RealmTemplateSpec](RealmTemplateSpec.md) | [chiefOfStaff](chiefOfStaff.md) | range | [RealmChiefOfStaffRef](RealmChiefOfStaffRef.md) |












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
| self | jumo:RealmChiefOfStaffRef |
| native | jumo:RealmChiefOfStaffRef |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RealmChiefOfStaffRef
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
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RealmChiefOfStaffRef
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
    required: true
    inlined: true
  chiefOfStaffProfileRef:
    name: chiefOfStaffProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RealmChiefOfStaffRef
    domain_of:
    - RealmChiefOfStaffRef
    range: ContractReference
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: RealmChiefOfStaffRef
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
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RealmChiefOfStaffRef
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
    required: true
    inlined: true
  chiefOfStaffProfileRef:
    name: chiefOfStaffProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RealmChiefOfStaffRef
    domain_of:
    - RealmChiefOfStaffRef
    range: ContractReference
    required: true
    inlined: true

```
</details></div>