---
search:
  boost: 10.0
---

# Class: ProjectDocumentation

<div data-search-exclude markdown="1">



URI: [jumo:ProjectDocumentation](https://jumo.dev/schemas/jumo-v1/ProjectDocumentation)





```mermaid
 classDiagram
    class ProjectDocumentation
    click ProjectDocumentation href "../ProjectDocumentation/"
      ProjectDocumentation : canonicalDecisions

      ProjectDocumentation : handoff

      ProjectDocumentation : roots





        ProjectDocumentation --> "1..*" DocumentationRoot : roots
        click DocumentationRoot href "../DocumentationRoot/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [roots](roots.md) | 1..* <br/> [DocumentationRoot](DocumentationRoot.md) |  | direct |
| [canonicalDecisions](canonicalDecisions.md) | 0..1 <br/> [String](String.md) | Folded in from the retired ProjectContract kind (owner decision O3, 2026-08-2... | direct |
| [handoff](handoff.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) | [documentation](documentation.md) | range | [ProjectDocumentation](ProjectDocumentation.md) |












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
| self | jumo:ProjectDocumentation |
| native | jumo:ProjectDocumentation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProjectDocumentation
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
  roots:
    name: roots
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: DocumentationRoot
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  canonicalDecisions:
    name: canonicalDecisions
    description: Folded in from the retired ProjectContract kind (owner decision O3,
      2026-08-22).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: string
  handoff:
    name: handoff
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: string

```
</details>

### Induced

<details>
```yaml
name: ProjectDocumentation
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
  roots:
    name: roots
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: DocumentationRoot
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  canonicalDecisions:
    name: canonicalDecisions
    description: Folded in from the retired ProjectContract kind (owner decision O3,
      2026-08-22).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: string
  handoff:
    name: handoff
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectDocumentation
    domain_of:
    - ProjectDocumentation
    range: string

```
</details></div>