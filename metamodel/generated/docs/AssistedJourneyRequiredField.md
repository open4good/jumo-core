---
search:
  boost: 10.0
---

# Class: AssistedJourneyRequiredField

<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyRequiredField](https://jumo.dev/schemas/jumo-v1/AssistedJourneyRequiredField)





```mermaid
 classDiagram
    class AssistedJourneyRequiredField
    click AssistedJourneyRequiredField href "../AssistedJourneyRequiredField/"
      AssistedJourneyRequiredField : field

      AssistedJourneyRequiredField : i18nKey


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [field](field.md) | 1 <br/> [String](String.md) |  | direct |
| [i18nKey](i18nKey.md) | 1 <br/> [String](String.md) | Resolved the same way a ProjectionField's own i18nKey is, so a step rendered ... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyStep](AssistedJourneyStep.md) | [requiredFields](requiredFields.md) | range | [AssistedJourneyRequiredField](AssistedJourneyRequiredField.md) |












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
| self | jumo:AssistedJourneyRequiredField |
| native | jumo:AssistedJourneyRequiredField |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyRequiredField
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
    owner: AssistedJourneyRequiredField
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    - AssistedJourneyRequiredField
    range: string
    required: true
  i18nKey:
    name: i18nKey
    description: Resolved the same way a ProjectionField's own i18nKey is, so a step
      rendered by ProjectionRenderer and the same step recapped after completion show
      the identical label.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRequiredField
    domain_of:
    - AssistedJourneyRequiredField
    - ProjectionSection
    - ProjectionField
    range: string
    required: true
    pattern: ^[a-z][a-zA-Z0-9]*$

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyRequiredField
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
    owner: AssistedJourneyRequiredField
    domain_of:
    - AssistedJourneyFieldValidation
    - AssistedJourneyFieldCondition
    - AssistedJourneyReferenceCheck
    - AssistedJourneyCollectionProjection
    - AssistedJourneyFieldDefault
    - AssistedJourneyRequiredField
    range: string
    required: true
  i18nKey:
    name: i18nKey
    description: Resolved the same way a ProjectionField's own i18nKey is, so a step
      rendered by ProjectionRenderer and the same step recapped after completion show
      the identical label.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRequiredField
    domain_of:
    - AssistedJourneyRequiredField
    - ProjectionSection
    - ProjectionField
    range: string
    required: true
    pattern: ^[a-z][a-zA-Z0-9]*$

```
</details></div>