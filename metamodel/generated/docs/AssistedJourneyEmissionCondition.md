---
search:
  boost: 10.0
---

# Class: AssistedJourneyEmissionCondition


_An equality condition deciding whether a bundle item is emitted at all, checked before any fan-out over its collection._



<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyEmissionCondition](https://jumo.dev/schemas/jumo-v1/AssistedJourneyEmissionCondition)





```mermaid
 classDiagram
    class AssistedJourneyEmissionCondition
    click AssistedJourneyEmissionCondition href "../AssistedJourneyEmissionCondition/"
      AssistedJourneyEmissionCondition : equalsValue

      AssistedJourneyEmissionCondition : whenField


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [whenField](whenField.md) | 1 <br/> [String](String.md) | The collected or derived value this bundle item's presence depends on | direct |
| [equalsValue](equalsValue.md) | 1 <br/> [String](String.md) | The bundle item is emitted when whenField equals this value, and skipped othe... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyEmissionBundleItem](AssistedJourneyEmissionBundleItem.md) | [condition](condition.md) | range | [AssistedJourneyEmissionCondition](AssistedJourneyEmissionCondition.md) |












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
| self | jumo:AssistedJourneyEmissionCondition |
| native | jumo:AssistedJourneyEmissionCondition |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyEmissionCondition
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
description: An equality condition deciding whether a bundle item is emitted at all,
  checked before any fan-out over its collection.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  whenField:
    name: whenField
    description: The collected or derived value this bundle item's presence depends
      on.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyEmissionCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - AssistedJourneyEmissionCondition
    range: string
    required: true
  equalsValue:
    name: equalsValue
    description: The bundle item is emitted when whenField equals this value, and
      skipped otherwise.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyEmissionCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - AssistedJourneyEmissionCondition
    - ProjectionOptionCondition
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyEmissionCondition
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
description: An equality condition deciding whether a bundle item is emitted at all,
  checked before any fan-out over its collection.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  whenField:
    name: whenField
    description: The collected or derived value this bundle item's presence depends
      on.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyEmissionCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - AssistedJourneyEmissionCondition
    range: string
    required: true
  equalsValue:
    name: equalsValue
    description: The bundle item is emitted when whenField equals this value, and
      skipped otherwise.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AssistedJourneyEmissionCondition
    domain_of:
    - AssistedJourneyFieldCondition
    - AssistedJourneyEmissionCondition
    - ProjectionOptionCondition
    range: string
    required: true

```
</details></div>