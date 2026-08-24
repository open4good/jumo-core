---
search:
  boost: 10.0
---

# Class: OrganizationAuditRetentionPolicySpec

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationAuditRetentionPolicySpec](https://jumo.dev/schemas/jumo-v1/OrganizationAuditRetentionPolicySpec)





```mermaid
 classDiagram
    class OrganizationAuditRetentionPolicySpec
    click OrganizationAuditRetentionPolicySpec href "../OrganizationAuditRetentionPolicySpec/"
      OrganizationAuditRetentionPolicySpec : organizationRef





        OrganizationAuditRetentionPolicySpec --> "1" ContractReference : organizationRef
        click ContractReference href "../ContractReference/"



      OrganizationAuditRetentionPolicySpec : terminalDataRetention


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [organizationRef](organizationRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [terminalDataRetention](terminalDataRetention.md) | 1 <br/> [Duration](Duration.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationAuditRetentionPolicy](OrganizationAuditRetentionPolicy.md) | [spec](spec.md) | range | [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | EXECUTION_HISTORY |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:OrganizationAuditRetentionPolicySpec |
| native | jumo:OrganizationAuditRetentionPolicySpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationAuditRetentionPolicySpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: EXECUTION_HISTORY
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
    owner: OrganizationAuditRetentionPolicySpec
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
  terminalDataRetention:
    name: terminalDataRetention
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAuditRetentionPolicySpec
    domain_of:
    - OrganizationAuditRetentionPolicySpec
    range: Duration
    required: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationAuditRetentionPolicySpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: EXECUTION_HISTORY
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
    owner: OrganizationAuditRetentionPolicySpec
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
  terminalDataRetention:
    name: terminalDataRetention
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationAuditRetentionPolicySpec
    domain_of:
    - OrganizationAuditRetentionPolicySpec
    range: Duration
    required: true

```
</details></div>