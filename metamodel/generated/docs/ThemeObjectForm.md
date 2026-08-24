---
search:
  boost: 10.0
---

# Class: ThemeObjectForm

<div data-search-exclude markdown="1">



URI: [jumo:ThemeObjectForm](https://jumo.dev/schemas/jumo-v1/ThemeObjectForm)





```mermaid
 classDiagram
    class ThemeObjectForm
    click ThemeObjectForm href "../ThemeObjectForm/"
      ThemeObjectForm : entityKey

      ThemeObjectForm : form


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [entityKey](entityKey.md) | 1 <br/> [String](String.md) |  | direct |
| [form](form.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ThemeRoom](ThemeRoom.md) | [objectForms](objectForms.md) | range | [ThemeObjectForm](ThemeObjectForm.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PUBLIC |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ThemeObjectForm |
| native | jumo:ThemeObjectForm |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ThemeObjectForm
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  entityKey:
    name: entityKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeObjectForm
    domain_of:
    - ThemeObjectForm
    range: string
    required: true
  form:
    name: form
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeObjectForm
    domain_of:
    - PromptOutput
    - ThemeObjectForm
    range: string
    required: true
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: ThemeObjectForm
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  entityKey:
    name: entityKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeObjectForm
    domain_of:
    - ThemeObjectForm
    range: string
    required: true
  form:
    name: form
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeObjectForm
    domain_of:
    - PromptOutput
    - ThemeObjectForm
    range: string
    required: true
    pattern: ^.{1,}$

```
</details></div>