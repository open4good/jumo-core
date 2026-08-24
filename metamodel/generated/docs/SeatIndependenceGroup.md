---
search:
  boost: 10.0
---

# Class: SeatIndependenceGroup

<div data-search-exclude markdown="1">



URI: [jumo:SeatIndependenceGroup](https://jumo.dev/schemas/jumo-v1/SeatIndependenceGroup)





```mermaid
 classDiagram
    class SeatIndependenceGroup
    click SeatIndependenceGroup href "../SeatIndependenceGroup/"
      SeatIndependenceGroup : seatIds


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [seatIds](seatIds.md) | 1..* <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationSpecBody](OrganizationSpecBody.md) | [independentSeatGroups](independentSeatGroups.md) | range | [SeatIndependenceGroup](SeatIndependenceGroup.md) |












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
| self | jumo:SeatIndependenceGroup |
| native | jumo:SeatIndependenceGroup |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SeatIndependenceGroup
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
  seatIds:
    name: seatIds
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SeatIndependenceGroup
    domain_of:
    - SeatIncompatibility
    - SeatIndependenceGroup
    range: Identifier
    required: true
    multivalued: true
    minimum_cardinality: 2

```
</details>

### Induced

<details>
```yaml
name: SeatIndependenceGroup
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
  seatIds:
    name: seatIds
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SeatIndependenceGroup
    domain_of:
    - SeatIncompatibility
    - SeatIndependenceGroup
    range: Identifier
    required: true
    multivalued: true
    minimum_cardinality: 2

```
</details></div>