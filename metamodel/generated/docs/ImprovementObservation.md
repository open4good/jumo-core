---
search:
  boost: 10.0
---

# Class: ImprovementObservation

<div data-search-exclude markdown="1">



URI: [jumo:ImprovementObservation](https://jumo.dev/schemas/jumo-v1/ImprovementObservation)





```mermaid
 classDiagram
    class ImprovementObservation
    click ImprovementObservation href "../ImprovementObservation/"
      ImprovementObservation : evidenceRef

      ImprovementObservation : measure

      ImprovementObservation : value


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [measure](measure.md) | 1 <br/> [String](String.md) |  | direct |
| [value](value.md) | 0..1 <br/> [String](String.md) |  | direct |
| [evidenceRef](evidenceRef.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) | [observedFrom](observedFrom.md) | range | [ImprovementObservation](ImprovementObservation.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | OBSERVATION |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ImprovementObservation |
| native | jumo:ImprovementObservation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImprovementObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: OBSERVATION
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
  measure:
    name: measure
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementObservation
    domain_of:
    - ImprovementObservation
    range: string
    required: true
  value:
    name: value
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementObservation
    domain_of:
    - KitBindingValue
    - AssistedJourneyFieldDefault
    - ImprovementObservation
    range: string
    pattern: ^.{1,}$
  evidenceRef:
    name: evidenceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementObservation
    domain_of:
    - RealmEnforcement
    - ImprovementObservation
    range: string
    required: true
    pattern: ^.{1,}$

```
</details>

### Induced

<details>
```yaml
name: ImprovementObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: OBSERVATION
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
  measure:
    name: measure
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementObservation
    domain_of:
    - ImprovementObservation
    range: string
    required: true
  value:
    name: value
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementObservation
    domain_of:
    - KitBindingValue
    - AssistedJourneyFieldDefault
    - ImprovementObservation
    range: string
    pattern: ^.{1,}$
  evidenceRef:
    name: evidenceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementObservation
    domain_of:
    - RealmEnforcement
    - ImprovementObservation
    range: string
    required: true
    pattern: ^.{1,}$

```
</details></div>