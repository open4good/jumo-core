---
search:
  boost: 10.0
---

# Class: EntityFacet

<div data-search-exclude markdown="1">



URI: [jumo:EntityFacet](https://jumo.dev/schemas/jumo-v1/EntityFacet)





```mermaid
 classDiagram
    class EntityFacet
    click EntityFacet href "../EntityFacet/"
      EntityFacet : commands

      EntityFacet : create





        EntityFacet --> "1" FacetCreateMode : create
        click FacetCreateMode href "../FacetCreateMode/"



      EntityFacet : detail

      EntityFacet : entity





        EntityFacet --> "1" InterfaceEntity : entity
        click InterfaceEntity href "../InterfaceEntity/"



      EntityFacet : list

      EntityFacet : modify

      EntityFacet : retire


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [entity](entity.md) | 1 <br/> [InterfaceEntity](InterfaceEntity.md) |  | direct |
| [list](list.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [detail](detail.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [create](create.md) | 1 <br/> [FacetCreateMode](FacetCreateMode.md) |  | direct |
| [modify](modify.md) | 1 <br/> [String](String.md) |  | direct |
| [retire](retire.md) | 1 <br/> [String](String.md) |  | direct |
| [commands](commands.md) | * <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) | [facets](facets.md) | range | [EntityFacet](EntityFacet.md) |












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
| self | jumo:EntityFacet |
| native | jumo:EntityFacet |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EntityFacet
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
  entity:
    name: entity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: InterfaceEntity
    required: true
  list:
    name: list
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: boolean
    required: true
  detail:
    name: detail
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    - ApiProblem
    range: boolean
    required: true
  create:
    name: create
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: FacetCreateMode
    required: true
  modify:
    name: modify
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    required: true
    equals_string: NONE
  retire:
    name: retire
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    required: true
    equals_string: NONE
  commands:
    name: commands
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    multivalued: true
    pattern: ^[A-Z][A-Z_]*$

```
</details>

### Induced

<details>
```yaml
name: EntityFacet
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
  entity:
    name: entity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: InterfaceEntity
    required: true
  list:
    name: list
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: boolean
    required: true
  detail:
    name: detail
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    - ApiProblem
    range: boolean
    required: true
  create:
    name: create
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: FacetCreateMode
    required: true
  modify:
    name: modify
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    required: true
    equals_string: NONE
  retire:
    name: retire
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    required: true
    equals_string: NONE
  commands:
    name: commands
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntityFacet
    domain_of:
    - EntityFacet
    range: string
    multivalued: true
    pattern: ^[A-Z][A-Z_]*$

```
</details></div>