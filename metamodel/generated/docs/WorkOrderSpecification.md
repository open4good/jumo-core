---
search:
  boost: 10.0
---

# Class: WorkOrderSpecification

<div data-search-exclude markdown="1">



URI: [jumo:WorkOrderSpecification](https://jumo.dev/schemas/jumo-v1/WorkOrderSpecification)





```mermaid
 classDiagram
    class WorkOrderSpecification
    click WorkOrderSpecification href "../WorkOrderSpecification/"
      WorkOrderSpecification : body

      WorkOrderSpecification : title


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [title](title.md) | 1 <br/> [String](String.md) |  | direct |
| [body](body.md) | 1 <br/> [String](String.md) | Markdown allowed | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkOrderSpec](WorkOrderSpec.md) | [specification](specification.md) | range | [WorkOrderSpecification](WorkOrderSpecification.md) |












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
| self | jumo:WorkOrderSpecification |
| native | jumo:WorkOrderSpecification |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkOrderSpecification
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
  title:
    name: title
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkOrderSpecification
    domain_of:
    - DocumentFrontMatter
    - WorkOrderSpecification
    - Control
    - ApiProblem
    range: string
    required: true
    pattern: ^.{1,}$
  body:
    name: body
    description: Markdown allowed.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkOrderSpecification
    domain_of:
    - WorkOrderSpecification
    - DocumentTemplateBody
    range: string
    required: true
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: WorkOrderSpecification
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
  title:
    name: title
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkOrderSpecification
    domain_of:
    - DocumentFrontMatter
    - WorkOrderSpecification
    - Control
    - ApiProblem
    range: string
    required: true
    pattern: ^.{1,}$
  body:
    name: body
    description: Markdown allowed.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkOrderSpecification
    domain_of:
    - WorkOrderSpecification
    - DocumentTemplateBody
    range: string
    required: true
    pattern: ^.{1,}$

```
</details></div>