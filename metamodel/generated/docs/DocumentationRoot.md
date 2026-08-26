---
search:
  boost: 10.0
---

# Class: DocumentationRoot

<div data-search-exclude markdown="1">



URI: [jumo:DocumentationRoot](https://jumo.dev/schemas/jumo-v1/DocumentationRoot)





```mermaid
 classDiagram
    class DocumentationRoot
    click DocumentationRoot href "../DocumentationRoot/"
      DocumentationRoot : maximumAudience





        DocumentationRoot --> "1" DataScope : maximumAudience
        click DataScope href "../DataScope/"



      DocumentationRoot : path


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [path](path.md) | 1 <br/> [String](String.md) | Repository-relative directory | direct |
| [maximumAudience](maximumAudience.md) | 1 <br/> [DataScope](DataScope.md) | Widest audience any document under this root may claim | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectDocumentation](ProjectDocumentation.md) | [roots](roots.md) | range | [DocumentationRoot](DocumentationRoot.md) |












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
| self | jumo:DocumentationRoot |
| native | jumo:DocumentationRoot |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DocumentationRoot
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
  path:
    name: path
    description: Repository-relative directory. No leading slash and no '..'.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DocumentationRoot
    domain_of:
    - DocumentationRoot
    - PromptBody
    - ApiOperation
    - ChangeSetFile
    - ProjectionOptionCondition
    - NestedOptionsSource
    - ProjectionField
    range: string
    required: true
    pattern: ^[A-Za-z0-9._-]+(/[A-Za-z0-9._-]+)*$
  maximumAudience:
    name: maximumAudience
    description: 'Widest audience any document under this root may claim. A ceiling,
      not a default: a directory set to REALM_PRIVATE holds for everything in it regardless
      of what a single file declares.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DocumentationRoot
    domain_of:
    - DocumentationRoot
    range: DataScope
    required: true

```
</details>

### Induced

<details>
```yaml
name: DocumentationRoot
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
  path:
    name: path
    description: Repository-relative directory. No leading slash and no '..'.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DocumentationRoot
    domain_of:
    - DocumentationRoot
    - PromptBody
    - ApiOperation
    - ChangeSetFile
    - ProjectionOptionCondition
    - NestedOptionsSource
    - ProjectionField
    range: string
    required: true
    pattern: ^[A-Za-z0-9._-]+(/[A-Za-z0-9._-]+)*$
  maximumAudience:
    name: maximumAudience
    description: 'Widest audience any document under this root may claim. A ceiling,
      not a default: a directory set to REALM_PRIVATE holds for everything in it regardless
      of what a single file declares.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DocumentationRoot
    domain_of:
    - DocumentationRoot
    range: DataScope
    required: true

```
</details></div>