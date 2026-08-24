---
search:
  boost: 10.0
---

# Class: ImprovementCeilings

<div data-search-exclude markdown="1">



URI: [jumo:ImprovementCeilings](https://jumo.dev/schemas/jumo-v1/ImprovementCeilings)





```mermaid
 classDiagram
    class ImprovementCeilings
    click ImprovementCeilings href "../ImprovementCeilings/"
      ImprovementCeilings : maximumOpenRecommendations

      ImprovementCeilings : mayRaiseCorpusCeiling

      ImprovementCeilings : recommendationExpiry


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [maximumOpenRecommendations](maximumOpenRecommendations.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [recommendationExpiry](recommendationExpiry.md) | 1 <br/> [Duration](Duration.md) |  | direct |
| [mayRaiseCorpusCeiling](mayRaiseCorpusCeiling.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) | [ceilings](ceilings.md) | range | [ImprovementCeilings](ImprovementCeilings.md) |












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
| self | jumo:ImprovementCeilings |
| native | jumo:ImprovementCeilings |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImprovementCeilings
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
  maximumOpenRecommendations:
    name: maximumOpenRecommendations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 50
  recommendationExpiry:
    name: recommendationExpiry
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: Duration
    required: true
  mayRaiseCorpusCeiling:
    name: mayRaiseCorpusCeiling
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: boolean
    required: true

```
</details>

### Induced

<details>
```yaml
name: ImprovementCeilings
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
  maximumOpenRecommendations:
    name: maximumOpenRecommendations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 50
  recommendationExpiry:
    name: recommendationExpiry
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: Duration
    required: true
  mayRaiseCorpusCeiling:
    name: mayRaiseCorpusCeiling
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementCeilings
    domain_of:
    - ImprovementCeilings
    range: boolean
    required: true

```
</details></div>