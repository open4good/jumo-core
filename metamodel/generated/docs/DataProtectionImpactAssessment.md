---
search:
  boost: 10.0
---

# Class: DataProtectionImpactAssessment

<div data-search-exclude markdown="1">



URI: [jumo:DataProtectionImpactAssessment](https://jumo.dev/schemas/jumo-v1/DataProtectionImpactAssessment)





```mermaid
 classDiagram
    class DataProtectionImpactAssessment
    click DataProtectionImpactAssessment href "../DataProtectionImpactAssessment/"
      DataProtectionImpactAssessment : assessedAt

      DataProtectionImpactAssessment : mitigations

      DataProtectionImpactAssessment : necessityAndProportionality

      DataProtectionImpactAssessment : reviewer

      DataProtectionImpactAssessment : risksToDataSubjects


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [necessityAndProportionality](necessityAndProportionality.md) | 0..1 <br/> [String](String.md) |  | direct |
| [risksToDataSubjects](risksToDataSubjects.md) | * <br/> [String](String.md) |  | direct |
| [mitigations](mitigations.md) | * <br/> [String](String.md) |  | direct |
| [assessedAt](assessedAt.md) | 0..1 <br/> [Date](Date.md) |  | direct |
| [reviewer](reviewer.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EvidenceProfileSpec](EvidenceProfileSpec.md) | [dpia](dpia.md) | range | [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |












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
| self | jumo:DataProtectionImpactAssessment |
| native | jumo:DataProtectionImpactAssessment |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DataProtectionImpactAssessment
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
  necessityAndProportionality:
    name: necessityAndProportionality
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    pattern: ^.{10,}$
  risksToDataSubjects:
    name: risksToDataSubjects
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    multivalued: true
  mitigations:
    name: mitigations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    multivalued: true
  assessedAt:
    name: assessedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    - ControlAssessment
    - McpCatalogAssessment
    range: date
  reviewer:
    name: reviewer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: Identifier

```
</details>

### Induced

<details>
```yaml
name: DataProtectionImpactAssessment
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
  necessityAndProportionality:
    name: necessityAndProportionality
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    pattern: ^.{10,}$
  risksToDataSubjects:
    name: risksToDataSubjects
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    multivalued: true
  mitigations:
    name: mitigations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: string
    multivalued: true
  assessedAt:
    name: assessedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    - ControlAssessment
    - McpCatalogAssessment
    range: date
  reviewer:
    name: reviewer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DataProtectionImpactAssessment
    domain_of:
    - DataProtectionImpactAssessment
    range: Identifier

```
</details></div>