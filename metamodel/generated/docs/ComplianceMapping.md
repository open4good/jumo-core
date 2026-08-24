---
search:
  boost: 10.0
---

# Class: ComplianceMapping


_Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may be displayed as a certification claim (enforced in Rego, not here)._



<div data-search-exclude markdown="1">



URI: [jumo:ComplianceMapping](https://jumo.dev/schemas/jumo-v1/ComplianceMapping)





```mermaid
 classDiagram
    class ComplianceMapping
    click ComplianceMapping href "../ComplianceMapping/"
      ComplianceMapping : controlRef

      ComplianceMapping : draft

      ComplianceMapping : referentialArticle


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [controlRef](controlRef.md) | 1 <br/> [String](String.md) | References a Control | direct |
| [referentialArticle](referentialArticle.md) | 0..1 <br/> [String](String.md) | e | direct |
| [draft](draft.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) | [mappings](mappings.md) | range | [ComplianceMapping](ComplianceMapping.md) |












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
| self | jumo:ComplianceMapping |
| native | jumo:ComplianceMapping |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ComplianceMapping
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
description: Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may
  be displayed as a certification claim (enforced in Rego, not here).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  controlRef:
    name: controlRef
    description: References a Control.controlId in the linked ControlCatalog.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    - ControlAssessment
    range: string
    required: true
  referentialArticle:
    name: referentialArticle
    description: e.g. an AI Act article number, an ISO clause number.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    range: string
  draft:
    name: draft
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: ComplianceMapping
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
description: Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may
  be displayed as a certification claim (enforced in Rego, not here).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  controlRef:
    name: controlRef
    description: References a Control.controlId in the linked ControlCatalog.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    - ControlAssessment
    range: string
    required: true
  referentialArticle:
    name: referentialArticle
    description: e.g. an AI Act article number, an ISO clause number.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    range: string
  draft:
    name: draft
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: ComplianceMapping
    domain_of:
    - ComplianceMapping
    range: boolean

```
</details></div>