---
search:
  boost: 10.0
---

# Class: AssistedJourneyEmittedIdentifier


_How the emitted document's identifier is derived from the run, always by slugifying one collected field rather than by a rule the platform keeps per journey._



<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyEmittedIdentifier](https://jumo.dev/schemas/jumo-v1/AssistedJourneyEmittedIdentifier)





```mermaid
 classDiagram
    class AssistedJourneyEmittedIdentifier
    click AssistedJourneyEmittedIdentifier href "../AssistedJourneyEmittedIdentifier/"
      AssistedJourneyEmittedIdentifier : defaultValue

      AssistedJourneyEmittedIdentifier : fromField

      AssistedJourneyEmittedIdentifier : suffix





        AssistedJourneyEmittedIdentifier --> "0..1" AssistedJourneyIdentifierSuffix : suffix
        click AssistedJourneyIdentifierSuffix href "../AssistedJourneyIdentifierSuffix/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [fromField](fromField.md) | 1 <br/> [String](String.md) |  | direct |
| [defaultValue](defaultValue.md) | 0..1 <br/> [String](String.md) | Used when the field was not collected | direct |
| [suffix](suffix.md) | 0..1 <br/> [AssistedJourneyIdentifierSuffix](AssistedJourneyIdentifierSuffix.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | [identifier](identifier.md) | range | [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) |












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
| self | jumo:AssistedJourneyEmittedIdentifier |
| native | jumo:AssistedJourneyEmittedIdentifier |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyEmittedIdentifier
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
description: How the emitted document's identifier is derived from the run, always
  by slugifying one collected field rather than by a rule the platform keeps per journey.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  fromField:
    name: fromField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: string
    required: true
  defaultValue:
    name: defaultValue
    description: Used when the field was not collected.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: string
  suffix:
    name: suffix
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: NONE
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: AssistedJourneyIdentifierSuffix

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyEmittedIdentifier
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
description: How the emitted document's identifier is derived from the run, always
  by slugifying one collected field rather than by a rule the platform keeps per journey.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  fromField:
    name: fromField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: string
    required: true
  defaultValue:
    name: defaultValue
    description: Used when the field was not collected.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: string
  suffix:
    name: suffix
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: NONE
    owner: AssistedJourneyEmittedIdentifier
    domain_of:
    - AssistedJourneyEmittedIdentifier
    range: AssistedJourneyIdentifierSuffix

```
</details></div>