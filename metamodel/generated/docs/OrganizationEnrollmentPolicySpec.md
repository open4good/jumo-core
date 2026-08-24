---
search:
  boost: 10.0
---

# Class: OrganizationEnrollmentPolicySpec

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationEnrollmentPolicySpec](https://jumo.dev/schemas/jumo-v1/OrganizationEnrollmentPolicySpec)





```mermaid
 classDiagram
    class OrganizationEnrollmentPolicySpec
    click OrganizationEnrollmentPolicySpec href "../OrganizationEnrollmentPolicySpec/"
      OrganizationEnrollmentPolicySpec : admittedEmailDomains

      OrganizationEnrollmentPolicySpec : admittedEmails

      OrganizationEnrollmentPolicySpec : oidcRealm

      OrganizationEnrollmentPolicySpec : organizationRef





        OrganizationEnrollmentPolicySpec --> "1" ContractReference : organizationRef
        click ContractReference href "../ContractReference/"



      OrganizationEnrollmentPolicySpec : realmProvisionerProjectionSpecRef





        OrganizationEnrollmentPolicySpec --> "1" ContractReference : realmProvisionerProjectionSpecRef
        click ContractReference href "../ContractReference/"



      OrganizationEnrollmentPolicySpec : realmRepositoryTemplate

      OrganizationEnrollmentPolicySpec : selfEnrollmentEnabled


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [organizationRef](organizationRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [admittedEmailDomains](admittedEmailDomains.md) | * <br/> [String](String.md) |  | direct |
| [admittedEmails](admittedEmails.md) | * <br/> [String](String.md) |  | direct |
| [oidcRealm](oidcRealm.md) | 1 <br/> [String](String.md) |  | direct |
| [selfEnrollmentEnabled](selfEnrollmentEnabled.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [realmProvisionerProjectionSpecRef](realmProvisionerProjectionSpecRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [realmRepositoryTemplate](realmRepositoryTemplate.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationEnrollmentPolicy](OrganizationEnrollmentPolicy.md) | [spec](spec.md) | range | [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |












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
| self | jumo:OrganizationEnrollmentPolicySpec |
| native | jumo:OrganizationEnrollmentPolicySpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationEnrollmentPolicySpec
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
    owner: OrganizationEnrollmentPolicySpec
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
  admittedEmailDomains:
    name: admittedEmailDomains
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    multivalued: true
  admittedEmails:
    name: admittedEmails
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    multivalued: true
  oidcRealm:
    name: oidcRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    required: true
  selfEnrollmentEnabled:
    name: selfEnrollmentEnabled
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: boolean
    required: true
  realmProvisionerProjectionSpecRef:
    name: realmProvisionerProjectionSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationBody
    - OrganizationEnrollmentPolicySpec
    range: ContractReference
    required: true
    inlined: true
  realmRepositoryTemplate:
    name: realmRepositoryTemplate
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationEnrollmentPolicySpec
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
    owner: OrganizationEnrollmentPolicySpec
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
  admittedEmailDomains:
    name: admittedEmailDomains
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    multivalued: true
  admittedEmails:
    name: admittedEmails
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    multivalued: true
  oidcRealm:
    name: oidcRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    required: true
  selfEnrollmentEnabled:
    name: selfEnrollmentEnabled
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: boolean
    required: true
  realmProvisionerProjectionSpecRef:
    name: realmProvisionerProjectionSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationBody
    - OrganizationEnrollmentPolicySpec
    range: ContractReference
    required: true
    inlined: true
  realmRepositoryTemplate:
    name: realmRepositoryTemplate
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentPolicySpec
    domain_of:
    - OrganizationEnrollmentPolicySpec
    range: string
    required: true

```
</details></div>