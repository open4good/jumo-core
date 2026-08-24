---
search:
  boost: 10.0
---

# Class: PrincipleSetSpec

<div data-search-exclude markdown="1">



URI: [jumo:PrincipleSetSpec](https://jumo.dev/schemas/jumo-v1/PrincipleSetSpec)





```mermaid
 classDiagram
    class PrincipleSetSpec
    click PrincipleSetSpec href "../PrincipleSetSpec/"
      PrincipleSetSpec : authority

      PrincipleSetSpec : principles





        PrincipleSetSpec --> "1..*" Principle : principles
        click Principle href "../Principle/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [authority](authority.md) | 1 <br/> [String](String.md) | Structurally enforced | direct |
| [principles](principles.md) | 1..* <br/> [Principle](Principle.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PrincipleSet](PrincipleSet.md) | [spec](spec.md) | range | [PrincipleSetSpec](PrincipleSetSpec.md) |












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
| self | jumo:PrincipleSetSpec |
| native | jumo:PrincipleSetSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PrincipleSetSpec
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
  authority:
    name: authority
    description: Structurally enforced. A PrincipleSet cannot declare any other authority.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipleSetSpec
    domain_of:
    - PrincipleSetSpec
    - ProjectSpec
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: INFLUENCE_ONLY
  principles:
    name: principles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipleSetSpec
    domain_of:
    - PrincipleSetSpec
    range: Principle
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: PrincipleSetSpec
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
  authority:
    name: authority
    description: Structurally enforced. A PrincipleSet cannot declare any other authority.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipleSetSpec
    domain_of:
    - PrincipleSetSpec
    - ProjectSpec
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: INFLUENCE_ONLY
  principles:
    name: principles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipleSetSpec
    domain_of:
    - PrincipleSetSpec
    range: Principle
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>