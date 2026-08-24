---
search:
  boost: 10.0
---

# Class: KitBindingDeclaration

<div data-search-exclude markdown="1">



URI: [jumo:KitBindingDeclaration](https://jumo.dev/schemas/jumo-v1/KitBindingDeclaration)





```mermaid
 classDiagram
    class KitBindingDeclaration
    click KitBindingDeclaration href "../KitBindingDeclaration/"
      KitBindingDeclaration : key

      KitBindingDeclaration : type





        KitBindingDeclaration --> "1" KitBindingValueType : type
        click KitBindingValueType href "../KitBindingValueType/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [key](key.md) | 1 <br/> [String](String.md) |  | direct |
| [type](type.md) | 1 <br/> [KitBindingValueType](KitBindingValueType.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) | [bindings](bindings.md) | range | [KitBindingDeclaration](KitBindingDeclaration.md) |












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
| self | jumo:KitBindingDeclaration |
| native | jumo:KitBindingDeclaration |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitBindingDeclaration
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
  key:
    name: key
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingDeclaration
    domain_of:
    - KitBindingDeclaration
    - KitBindingValue
    range: string
    required: true
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingDeclaration
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: KitBindingValueType
    required: true

```
</details>

### Induced

<details>
```yaml
name: KitBindingDeclaration
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
  key:
    name: key
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingDeclaration
    domain_of:
    - KitBindingDeclaration
    - KitBindingValue
    range: string
    required: true
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingDeclaration
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: KitBindingValueType
    required: true

```
</details></div>