---
search:
  boost: 10.0
---

# Class: OrganizationAccessBindingSpec

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationAccessBindingSpec](https://jumo.dev/schemas/jumo-v1/OrganizationAccessBindingSpec)





```mermaid
 classDiagram
    class OrganizationAccessBindingSpec
    click OrganizationAccessBindingSpec href "../OrganizationAccessBindingSpec/"
      OrganizationAccessBindingSpec : organizationRef





        OrganizationAccessBindingSpec --> "1" ContractReference : organizationRef
        click ContractReference href "../ContractReference/"



      OrganizationAccessBindingSpec : principalId

      OrganizationAccessBindingSpec : role





        OrganizationAccessBindingSpec --> "1" OrganizationRole : role
        click OrganizationRole href "../OrganizationRole/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [organizationRef](organizationRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [principalId](principalId.md) | 1 <br/> [String](String.md) |  | direct |
| [role](role.md) | 1 <br/> [OrganizationRole](OrganizationRole.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationAccessBinding](OrganizationAccessBinding.md) | [spec](spec.md) | range | [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md) |












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
| self | jumo:OrganizationAccessBindingSpec |
| native | jumo:OrganizationAccessBindingSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationAccessBindingSpec
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
  organizationRef:
    name: organizationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAccessBindingSpec
    domain_of:
    - OrganizationAccessBindingSpec
    - OrganizationEnrollmentPolicySpec
    - OrganizationAuditRetentionPolicySpec
    - OrganizationRetentionHoldSpec
    - OrganizationPublicationPolicySpec
    - RealmPublicationSpec
    range: ContractReference
    required: true
    inlined: true
  principalId:
    name: principalId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAccessBindingSpec
    domain_of:
    - OrganizationAccessBindingSpec
    range: string
    required: true
  role:
    name: role
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationAccessBindingSpec
    domain_of:
    - TeamMember
    - OrganizationAccessBindingSpec
    range: OrganizationRole
    required: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationAccessBindingSpec
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
  organizationRef:
    name: organizationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAccessBindingSpec
    domain_of:
    - OrganizationAccessBindingSpec
    - OrganizationEnrollmentPolicySpec
    - OrganizationAuditRetentionPolicySpec
    - OrganizationRetentionHoldSpec
    - OrganizationPublicationPolicySpec
    - RealmPublicationSpec
    range: ContractReference
    required: true
    inlined: true
  principalId:
    name: principalId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAccessBindingSpec
    domain_of:
    - OrganizationAccessBindingSpec
    range: string
    required: true
  role:
    name: role
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationAccessBindingSpec
    domain_of:
    - TeamMember
    - OrganizationAccessBindingSpec
    range: OrganizationRole
    required: true

```
</details></div>