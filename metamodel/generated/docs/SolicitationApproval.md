---
search:
  boost: 10.0
---

# Class: SolicitationApproval

<div data-search-exclude markdown="1">



URI: [jumo:SolicitationApproval](https://jumo.dev/schemas/jumo-v1/SolicitationApproval)





```mermaid
 classDiagram
    class SolicitationApproval
    click SolicitationApproval href "../SolicitationApproval/"
      SolicitationApproval : requiredOwners





        SolicitationApproval --> "1" RequiredOwners : requiredOwners
        click RequiredOwners href "../RequiredOwners/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [requiredOwners](requiredOwners.md) | 1 <br/> [RequiredOwners](RequiredOwners.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SolicitationContractSpec](SolicitationContractSpec.md) | [approval](approval.md) | range | [SolicitationApproval](SolicitationApproval.md) |












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
| self | jumo:SolicitationApproval |
| native | jumo:SolicitationApproval |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SolicitationApproval
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
  requiredOwners:
    name: requiredOwners
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationApproval
    domain_of:
    - SolicitationApproval
    range: RequiredOwners
    required: true

```
</details>

### Induced

<details>
```yaml
name: SolicitationApproval
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
  requiredOwners:
    name: requiredOwners
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SolicitationApproval
    domain_of:
    - SolicitationApproval
    range: RequiredOwners
    required: true

```
</details></div>