---
search:
  boost: 10.0
---

# Class: OfferingSupport

<div data-search-exclude markdown="1">



URI: [jumo:OfferingSupport](https://jumo.dev/schemas/jumo-v1/OfferingSupport)





```mermaid
 classDiagram
    class OfferingSupport
    click OfferingSupport href "../OfferingSupport/"
      OfferingSupport : firstResponseTargetBusinessDays

      OfferingSupport : recurringAdvice

      OfferingSupport : requestsPerMonth

      OfferingSupport : sla





        OfferingSupport --> "1" SlaTier : sla
        click SlaTier href "../SlaTier/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [requestsPerMonth](requestsPerMonth.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [firstResponseTargetBusinessDays](firstResponseTargetBusinessDays.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [sla](sla.md) | 1 <br/> [SlaTier](SlaTier.md) |  | direct |
| [recurringAdvice](recurringAdvice.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [support](support.md) | range | [OfferingSupport](OfferingSupport.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PUBLIC |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:OfferingSupport |
| native | jumo:OfferingSupport |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingSupport
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  requestsPerMonth:
    name: requestsPerMonth
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '2'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: integer
    required: true
  firstResponseTargetBusinessDays:
    name: firstResponseTargetBusinessDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '2'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: integer
    required: true
  sla:
    name: sla
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: NONE
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: SlaTier
    required: true
  recurringAdvice:
    name: recurringAdvice
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: boolean
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingSupport
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
    value: PUBLIC
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  requestsPerMonth:
    name: requestsPerMonth
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '2'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: integer
    required: true
  firstResponseTargetBusinessDays:
    name: firstResponseTargetBusinessDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '2'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: integer
    required: true
  sla:
    name: sla
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: NONE
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: SlaTier
    required: true
  recurringAdvice:
    name: recurringAdvice
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: OfferingSupport
    domain_of:
    - OfferingSupport
    range: boolean
    required: true

```
</details></div>