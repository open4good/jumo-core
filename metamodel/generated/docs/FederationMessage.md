---
search:
  boost: 10.0
---

# Class: FederationMessage

<div data-search-exclude markdown="1">



URI: [jumo:FederationMessage](https://jumo.dev/schemas/jumo-v1/FederationMessage)





```mermaid
 classDiagram
    class FederationMessage
    click FederationMessage href "../FederationMessage/"
      FederationMessage : direction





        FederationMessage --> "1" FederationMessageDirection : direction
        click FederationMessageDirection href "../FederationMessageDirection/"



      FederationMessage : schemaRef

      FederationMessage : type


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [type](type.md) | 1 <br/> [String](String.md) |  | direct |
| [direction](direction.md) | 1 <br/> [FederationMessageDirection](FederationMessageDirection.md) |  | direct |
| [schemaRef](schemaRef.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [FederationProfileSpec](FederationProfileSpec.md) | [messages](messages.md) | range | [FederationMessage](FederationMessage.md) |












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
| self | jumo:FederationMessage |
| native | jumo:FederationMessage |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: FederationMessage
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
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: string
    required: true
    pattern: ^[A-Za-z][A-Za-z0-9.:-]+$
  direction:
    name: direction
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - ImprovementRecommendationSpec
    - FederationMessage
    range: FederationMessageDirection
    required: true
  schemaRef:
    name: schemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - PromptOutput
    - FederationMessage
    range: string
    required: true
    pattern: ^.{3,}$

```
</details>

### Induced

<details>
```yaml
name: FederationMessage
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
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: string
    required: true
    pattern: ^[A-Za-z][A-Za-z0-9.:-]+$
  direction:
    name: direction
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - ImprovementRecommendationSpec
    - FederationMessage
    range: FederationMessageDirection
    required: true
  schemaRef:
    name: schemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationMessage
    domain_of:
    - PromptOutput
    - FederationMessage
    range: string
    required: true
    pattern: ^.{3,}$

```
</details></div>