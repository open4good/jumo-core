---
search:
  boost: 10.0
---

# Class: AssistedJourneyFieldValidation

<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyFieldValidation](https://jumo.dev/schemas/jumo-v1/AssistedJourneyFieldValidation)





```mermaid
 classDiagram
    class AssistedJourneyFieldValidation
    click AssistedJourneyFieldValidation href "../AssistedJourneyFieldValidation/"
      AssistedJourneyFieldValidation : field

      AssistedJourneyFieldValidation : minimumItems

      AssistedJourneyFieldValidation : minimumLength

      AssistedJourneyFieldValidation : pattern

      AssistedJourneyFieldValidation : required


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [field](field.md) | 1 <br/> [String](String.md) |  | direct |
| [required](required.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |
| [minimumLength](minimumLength.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [pattern](pattern.md) | 0..1 <br/> [String](String.md) |  | direct |
| [minimumItems](minimumItems.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | [validations](validations.md) | range | [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) | [itemValidations](itemValidations.md) | range | [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |












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
| self | jumo:AssistedJourneyFieldValidation |
| native | jumo:AssistedJourneyFieldValidation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyFieldValidation
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
  field:
    name: field
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    range: string
    required: true
  required:
    name: required
    from_schema: https://jumo.dev/schemas/jumo-v1
    ifabsent: 'false'
    owner: AssistedJourneyFieldValidation
    domain_of:
    - PromptVariable
    - AssistedJourneyFieldValidation
    - SecretRotation
    - ProjectionField
    range: boolean
  minimumLength:
    name: minimumLength
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: integer
    minimum_value: 1
  pattern:
    name: pattern
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: string
  minimumItems:
    name: minimumItems
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: integer
    minimum_value: 1

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyFieldValidation
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
  field:
    name: field
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    range: string
    required: true
  required:
    name: required
    from_schema: https://jumo.dev/schemas/jumo-v1
    ifabsent: 'false'
    owner: AssistedJourneyFieldValidation
    domain_of:
    - PromptVariable
    - AssistedJourneyFieldValidation
    - SecretRotation
    - ProjectionField
    range: boolean
  minimumLength:
    name: minimumLength
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: integer
    minimum_value: 1
  pattern:
    name: pattern
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: string
  minimumItems:
    name: minimumItems
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyFieldValidation
    domain_of:
    - AssistedJourneyFieldValidation
    range: integer
    minimum_value: 1

```
</details></div>