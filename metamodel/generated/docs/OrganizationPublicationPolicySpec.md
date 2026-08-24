---
search:
  boost: 10.0
---

# Class: OrganizationPublicationPolicySpec

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationPublicationPolicySpec](https://jumo.dev/schemas/jumo-v1/OrganizationPublicationPolicySpec)





```mermaid
 classDiagram
    class OrganizationPublicationPolicySpec
    click OrganizationPublicationPolicySpec href "../OrganizationPublicationPolicySpec/"
      OrganizationPublicationPolicySpec : allowedAdapters





        OrganizationPublicationPolicySpec --> "1..*" InteroperabilityAdapter : allowedAdapters
        click InteroperabilityAdapter href "../InteroperabilityAdapter/"



      OrganizationPublicationPolicySpec : jwksUri

      OrganizationPublicationPolicySpec : maxPublishedRealms

      OrganizationPublicationPolicySpec : organizationRef





        OrganizationPublicationPolicySpec --> "1" ContractReference : organizationRef
        click ContractReference href "../ContractReference/"



      OrganizationPublicationPolicySpec : publicKey


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [organizationRef](organizationRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [allowedAdapters](allowedAdapters.md) | 1..* <br/> [InteroperabilityAdapter](InteroperabilityAdapter.md) |  | direct |
| [jwksUri](jwksUri.md) | 0..1 <br/> [String](String.md) |  | direct |
| [publicKey](publicKey.md) | 0..1 <br/> [String](String.md) |  | direct |
| [maxPublishedRealms](maxPublishedRealms.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationPublicationPolicy](OrganizationPublicationPolicy.md) | [spec](spec.md) | range | [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |












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
| self | jumo:OrganizationPublicationPolicySpec |
| native | jumo:OrganizationPublicationPolicySpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationPublicationPolicySpec
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
    owner: OrganizationPublicationPolicySpec
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
  allowedAdapters:
    name: allowedAdapters
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: InteroperabilityAdapter
    required: true
    multivalued: true
    minimum_cardinality: 1
  jwksUri:
    name: jwksUri
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: string
  publicKey:
    name: publicKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: string
  maxPublishedRealms:
    name: maxPublishedRealms
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: integer
    minimum_value: 1

```
</details>

### Induced

<details>
```yaml
name: OrganizationPublicationPolicySpec
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
    owner: OrganizationPublicationPolicySpec
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
  allowedAdapters:
    name: allowedAdapters
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: InteroperabilityAdapter
    required: true
    multivalued: true
    minimum_cardinality: 1
  jwksUri:
    name: jwksUri
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: string
  publicKey:
    name: publicKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: string
  maxPublishedRealms:
    name: maxPublishedRealms
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationPublicationPolicySpec
    domain_of:
    - OrganizationPublicationPolicySpec
    range: integer
    minimum_value: 1

```
</details></div>