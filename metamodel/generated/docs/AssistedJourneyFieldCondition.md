---
search:
  boost: 10.0
---

# Class: AssistedJourneyFieldCondition


_One field of the emitted document and the collected value that decides whether it is present at all._



<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyFieldCondition](https://jumo.dev/schemas/jumo-v1/AssistedJourneyFieldCondition)





```mermaid
 classDiagram
    class AssistedJourneyFieldCondition
    click AssistedJourneyFieldCondition href "../AssistedJourneyFieldCondition/"
      AssistedJourneyFieldCondition : equalsValue

      AssistedJourneyFieldCondition : field

      AssistedJourneyFieldCondition : whenField


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [field](field.md) | 1 <br/> [String](String.md) |  | direct |
| [whenField](whenField.md) | 1 <br/> [String](String.md) | The collected or derived value the presence of `field` depends on | direct |
| [equalsValue](equalsValue.md) | 1 <br/> [String](String.md) | `field` is kept when `whenField` equals this value, and removed otherwise | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | [fieldConditions](fieldConditions.md) | range | [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) |












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
| self | jumo:AssistedJourneyFieldCondition |
| native | jumo:AssistedJourneyFieldCondition |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyFieldCondition
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
description: One field of the emitted document and the collected value that decides
  whether it is present at all.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  field:
    name: field
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    range: string
    required: true
  whenField:
    name: whenField
    description: The collected or derived value the presence of `field` depends on.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldCondition
    range: string
    required: true
  equalsValue:
    name: equalsValue
    description: '`field` is kept when `whenField` equals this value, and removed
      otherwise.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - ProjectionOptionCondition
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyFieldCondition
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
description: One field of the emitted document and the collected value that decides
  whether it is present at all.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  field:
    name: field
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    range: string
    required: true
  whenField:
    name: whenField
    description: The collected or derived value the presence of `field` depends on.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldCondition
    range: string
    required: true
  equalsValue:
    name: equalsValue
    description: '`field` is kept when `whenField` equals this value, and removed
      otherwise.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - ProjectionOptionCondition
    range: string
    required: true

```
</details></div>