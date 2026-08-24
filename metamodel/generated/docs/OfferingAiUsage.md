---
search:
  boost: 10.0
---

# Class: OfferingAiUsage

<div data-search-exclude markdown="1">



URI: [jumo:OfferingAiUsage](https://jumo.dev/schemas/jumo-v1/OfferingAiUsage)





```mermaid
 classDiagram
    class OfferingAiUsage
    click OfferingAiUsage href "../OfferingAiUsage/"
      OfferingAiUsage : byokAllowed

      OfferingAiUsage : consumerIdentityRouting





        OfferingAiUsage --> "1" ConsumerIdentityRouting : consumerIdentityRouting
        click ConsumerIdentityRouting href "../ConsumerIdentityRouting/"



      OfferingAiUsage : includedCreditEur

      OfferingAiUsage : overage





        OfferingAiUsage --> "1" OfferingOverage : overage
        click OfferingOverage href "../OfferingOverage/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [includedCreditEur](includedCreditEur.md) | 1 <br/> [Float](Float.md) |  | direct |
| [byokAllowed](byokAllowed.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [consumerIdentityRouting](consumerIdentityRouting.md) | 1 <br/> [ConsumerIdentityRouting](ConsumerIdentityRouting.md) |  | direct |
| [overage](overage.md) | 1 <br/> [OfferingOverage](OfferingOverage.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [aiUsage](aiUsage.md) | range | [OfferingAiUsage](OfferingAiUsage.md) |












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
| self | jumo:OfferingAiUsage |
| native | jumo:OfferingAiUsage |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingAiUsage
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
  includedCreditEur:
    name: includedCreditEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '5'
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: float
    required: true
  byokAllowed:
    name: byokAllowed
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: boolean
    required: true
  consumerIdentityRouting:
    name: consumerIdentityRouting
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: ConsumerIdentityRouting
    required: true
  overage:
    name: overage
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: OfferingOverage
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: OfferingAiUsage
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
  includedCreditEur:
    name: includedCreditEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '5'
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: float
    required: true
  byokAllowed:
    name: byokAllowed
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: boolean
    required: true
  consumerIdentityRouting:
    name: consumerIdentityRouting
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: ConsumerIdentityRouting
    required: true
  overage:
    name: overage
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OfferingAiUsage
    domain_of:
    - OfferingAiUsage
    range: OfferingOverage
    required: true
    inlined: true

```
</details></div>