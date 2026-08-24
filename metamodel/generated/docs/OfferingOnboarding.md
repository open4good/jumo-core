---
search:
  boost: 10.0
---

# Class: OfferingOnboarding

<div data-search-exclude markdown="1">



URI: [jumo:OfferingOnboarding](https://jumo.dev/schemas/jumo-v1/OfferingOnboarding)





```mermaid
 classDiagram
    class OfferingOnboarding
    click OfferingOnboarding href "../OfferingOnboarding/"
      OfferingOnboarding : guidedMinutes


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [guidedMinutes](guidedMinutes.md) | 1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [onboarding](onboarding.md) | range | [OfferingOnboarding](OfferingOnboarding.md) |












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
| self | jumo:OfferingOnboarding |
| native | jumo:OfferingOnboarding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingOnboarding
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
  guidedMinutes:
    name: guidedMinutes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingOnboarding
    domain_of:
    - OfferingOnboarding
    range: integer
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingOnboarding
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
  guidedMinutes:
    name: guidedMinutes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingOnboarding
    domain_of:
    - OfferingOnboarding
    range: integer
    required: true

```
</details></div>