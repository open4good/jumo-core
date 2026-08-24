---
search:
  boost: 10.0
---

# Class: PromptBody

<div data-search-exclude markdown="1">



URI: [jumo:PromptBody](https://jumo.dev/schemas/jumo-v1/PromptBody)





```mermaid
 classDiagram
    class PromptBody
    click PromptBody href "../PromptBody/"
      PromptBody : engine





        PromptBody --> "1" PromptEngine : engine
        click PromptEngine href "../PromptEngine/"



      PromptBody : path

      PromptBody : system

      PromptBody : user


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [engine](engine.md) | 1 <br/> [PromptEngine](PromptEngine.md) |  | direct |
| [system](system.md) | 0..1 <br/> [String](String.md) |  | direct |
| [user](user.md) | 1 <br/> [String](String.md) |  | direct |
| [path](path.md) | 0..1 <br/> [String](String.md) | Optional path to the body, for prompts too long to inline | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) | [template](template.md) | range | [PromptBody](PromptBody.md) |












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
| self | jumo:PromptBody |
| native | jumo:PromptBody |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PromptBody
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
  engine:
    name: engine
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: PromptEngine
    required: true
  system:
    name: system
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: string
  user:
    name: user
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: string
    required: true
    pattern: ^.{1,}$
  path:
    name: path
    description: Optional path to the body, for prompts too long to inline.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PromptBody
    domain_of:
    - DocumentationRoot
    - PromptBody
    - ApiOperation
    - ChangeSetFile
    - ProjectionOptionCondition
    - ProjectionField
    range: string

```
</details>

### Induced

<details>
```yaml
name: PromptBody
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
  engine:
    name: engine
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: PromptEngine
    required: true
  system:
    name: system
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: string
  user:
    name: user
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptBody
    domain_of:
    - PromptBody
    range: string
    required: true
    pattern: ^.{1,}$
  path:
    name: path
    description: Optional path to the body, for prompts too long to inline.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PromptBody
    domain_of:
    - DocumentationRoot
    - PromptBody
    - ApiOperation
    - ChangeSetFile
    - ProjectionOptionCondition
    - ProjectionField
    range: string

```
</details></div>