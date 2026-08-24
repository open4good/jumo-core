---
search:
  boost: 10.0
---

# Class: KitBindingValue


_Open string-keyed map (string|number|boolean values) in the source schema, modeled as key/value pairs; value kept as string, the widest common representation._



<div data-search-exclude markdown="1">



URI: [jumo:KitBindingValue](https://jumo.dev/schemas/jumo-v1/KitBindingValue)





```mermaid
 classDiagram
    class KitBindingValue
    click KitBindingValue href "../KitBindingValue/"
      KitBindingValue : key

      KitBindingValue : value


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [key](key.md) | 1 <br/> [String](String.md) |  | direct |
| [value](value.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [KitBindingSpec](KitBindingSpec.md) | [values](values.md) | range | [KitBindingValue](KitBindingValue.md) |












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
| self | jumo:KitBindingValue |
| native | jumo:KitBindingValue |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitBindingValue
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
description: Open string-keyed map (string|number|boolean values) in the source schema,
  modeled as key/value pairs; value kept as string, the widest common representation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  key:
    name: key
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitBindingValue
    domain_of:
    - KitBindingDeclaration
    - KitBindingValue
    range: string
    required: true
  value:
    name: value
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingValue
    domain_of:
    - KitBindingValue
    - AssistedJourneyFieldDefault
    - ImprovementObservation
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: KitBindingValue
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
description: Open string-keyed map (string|number|boolean values) in the source schema,
  modeled as key/value pairs; value kept as string, the widest common representation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  key:
    name: key
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitBindingValue
    domain_of:
    - KitBindingDeclaration
    - KitBindingValue
    range: string
    required: true
  value:
    name: value
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitBindingValue
    domain_of:
    - KitBindingValue
    - AssistedJourneyFieldDefault
    - ImprovementObservation
    range: string
    required: true

```
</details></div>