---
search:
  boost: 10.0
---

# Class: Control

<div data-search-exclude markdown="1">



URI: [jumo:Control](https://jumo.dev/schemas/jumo-v1/Control)





```mermaid
 classDiagram
    class Control
    click Control href "../Control/"
      Control : category

      Control : controlId

      Control : mandatoryObligations





        Control --> "*" Obligation : mandatoryObligations
        click Obligation href "../Obligation/"



      Control : title


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [controlId](controlId.md) | 1 <br/> [String](String.md) |  | direct |
| [title](title.md) | 1 <br/> [String](String.md) |  | direct |
| [category](category.md) | 1 <br/> [String](String.md) |  | direct |
| [mandatoryObligations](mandatoryObligations.md) | * <br/> [Obligation](Obligation.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ControlCatalogSpec](ControlCatalogSpec.md) | [controls](controls.md) | range | [Control](Control.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | POLICY |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:Control |
| native | jumo:Control |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Control
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
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
  controlId:
    name: controlId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Control
    domain_of:
    - Control
    range: string
    required: true
    pattern: ^.{2,}$
  title:
    name: title
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: Control
    domain_of:
    - DocumentFrontMatter
    - WorkOrderSpecification
    - Control
    - ApiProblem
    range: string
    required: true
    pattern: ^.{3,}$
  category:
    name: category
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: Control
    domain_of:
    - AssistedJourneySpec
    - Control
    - ConnectorIntegrationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  mandatoryObligations:
    name: mandatoryObligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Control
    domain_of:
    - Control
    range: Obligation
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: Control
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
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
  controlId:
    name: controlId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Control
    domain_of:
    - Control
    range: string
    required: true
    pattern: ^.{2,}$
  title:
    name: title
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: Control
    domain_of:
    - DocumentFrontMatter
    - WorkOrderSpecification
    - Control
    - ApiProblem
    range: string
    required: true
    pattern: ^.{3,}$
  category:
    name: category
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: Control
    domain_of:
    - AssistedJourneySpec
    - Control
    - ConnectorIntegrationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  mandatoryObligations:
    name: mandatoryObligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Control
    domain_of:
    - Control
    range: Obligation
    multivalued: true

```
</details></div>