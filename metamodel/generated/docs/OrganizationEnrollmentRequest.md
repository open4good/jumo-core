---
search:
  boost: 10.0
---

# Class: OrganizationEnrollmentRequest


_First, identity-admitted onboarding payload. The trusted provisioner consumes the bounded request only after policy approval; this payload itself neither creates a Realm nor a Git repository._



<div data-search-exclude markdown="1">



URI: [jumo:OrganizationEnrollmentRequest](https://jumo.dev/schemas/jumo-v1/OrganizationEnrollmentRequest)





```mermaid
 classDiagram
    class OrganizationEnrollmentRequest
    click OrganizationEnrollmentRequest href "../OrganizationEnrollmentRequest/"
      OrganizationEnrollmentRequest : nickname


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [nickname](nickname.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | COMMAND |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:OrganizationEnrollmentRequest |
| native | jumo:OrganizationEnrollmentRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationEnrollmentRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: First, identity-admitted onboarding payload. The trusted provisioner
  consumes the bounded request only after policy approval; this payload itself neither
  creates a Realm nor a Git repository.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  nickname:
    name: nickname
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentRequest
    domain_of:
    - OrganizationEnrollmentRequest
    range: Identifier
    required: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationEnrollmentRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: First, identity-admitted onboarding payload. The trusted provisioner
  consumes the bounded request only after policy approval; this payload itself neither
  creates a Realm nor a Git repository.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  nickname:
    name: nickname
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationEnrollmentRequest
    domain_of:
    - OrganizationEnrollmentRequest
    range: Identifier
    required: true

```
</details></div>