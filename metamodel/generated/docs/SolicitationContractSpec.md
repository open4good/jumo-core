---
search:
  boost: 10.0
---

# Class: SolicitationContractSpec

<div data-search-exclude markdown="1">



URI: [jumo:SolicitationContractSpec](https://jumo.dev/schemas/jumo-v1/SolicitationContractSpec)





```mermaid
 classDiagram
    class SolicitationContractSpec
    click SolicitationContractSpec href "../SolicitationContractSpec/"
      SolicitationContractSpec : allowedRequests





        SolicitationContractSpec --> "1..*" AllowedRequest : allowedRequests
        click AllowedRequest href "../AllowedRequest/"



      SolicitationContractSpec : approval





        SolicitationContractSpec --> "1" SolicitationApproval : approval
        click SolicitationApproval href "../SolicitationApproval/"



      SolicitationContractSpec : callerProject

      SolicitationContractSpec : expiresAfter

      SolicitationContractSpec : forbidden





        SolicitationContractSpec --> "1..*" ForbiddenSolicitationReach : forbidden
        click ForbiddenSolicitationReach href "../ForbiddenSolicitationReach/"



      SolicitationContractSpec : targetProject


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [callerProject](callerProject.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [targetProject](targetProject.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [allowedRequests](allowedRequests.md) | 1..* <br/> [AllowedRequest](AllowedRequest.md) |  | direct |
| [expiresAfter](expiresAfter.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |
| [approval](approval.md) | 1 <br/> [SolicitationApproval](SolicitationApproval.md) |  | direct |
| [forbidden](forbidden.md) | 1..* <br/> [ForbiddenSolicitationReach](ForbiddenSolicitationReach.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SolicitationContract](SolicitationContract.md) | [spec](spec.md) | range | [SolicitationContractSpec](SolicitationContractSpec.md) |












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
| self | jumo:SolicitationContractSpec |
| native | jumo:SolicitationContractSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SolicitationContractSpec
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
  callerProject:
    name: callerProject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Identifier
    required: true
  targetProject:
    name: targetProject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Identifier
    required: true
  allowedRequests:
    name: allowedRequests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: AllowedRequest
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  expiresAfter:
    name: expiresAfter
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Duration
  approval:
    name: approval
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: SolicitationApproval
    required: true
    inlined: true
  forbidden:
    name: forbidden
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: ForbiddenSolicitationReach
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: SolicitationContractSpec
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
  callerProject:
    name: callerProject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Identifier
    required: true
  targetProject:
    name: targetProject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Identifier
    required: true
  allowedRequests:
    name: allowedRequests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: AllowedRequest
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  expiresAfter:
    name: expiresAfter
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: Duration
  approval:
    name: approval
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: SolicitationApproval
    required: true
    inlined: true
  forbidden:
    name: forbidden
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationContractSpec
    domain_of:
    - SolicitationContractSpec
    range: ForbiddenSolicitationReach
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details></div>