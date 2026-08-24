---
search:
  boost: 10.0
---

# Class: OfferingOverage

<div data-search-exclude markdown="1">



URI: [jumo:OfferingOverage](https://jumo.dev/schemas/jumo-v1/OfferingOverage)





```mermaid
 classDiagram
    class OfferingOverage
    click OfferingOverage href "../OfferingOverage/"
      OfferingOverage : hardCap

      OfferingOverage : optInRequired

      OfferingOverage : providerMarkupPercent


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [optInRequired](optInRequired.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [providerMarkupPercent](providerMarkupPercent.md) | 1 <br/> [Float](Float.md) |  | direct |
| [hardCap](hardCap.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingAiUsage](OfferingAiUsage.md) | [overage](overage.md) | range | [OfferingOverage](OfferingOverage.md) |












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
| self | jumo:OfferingOverage |
| native | jumo:OfferingOverage |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingOverage
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
  optInRequired:
    name: optInRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: boolean
    required: true
  providerMarkupPercent:
    name: providerMarkupPercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '20'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: float
    required: true
  hardCap:
    name: hardCap
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: boolean
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingOverage
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
  optInRequired:
    name: optInRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: boolean
    required: true
  providerMarkupPercent:
    name: providerMarkupPercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '20'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: float
    required: true
  hardCap:
    name: hardCap
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingOverage
    domain_of:
    - OfferingOverage
    range: boolean
    required: true

```
</details></div>