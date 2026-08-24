---
search:
  boost: 10.0
---

# Class: OfferingValidation

<div data-search-exclude markdown="1">



URI: [jumo:OfferingValidation](https://jumo.dev/schemas/jumo-v1/OfferingValidation)





```mermaid
 classDiagram
    class OfferingValidation
    click OfferingValidation href "../OfferingValidation/"
      OfferingValidation : maximumMedianSupportMinutesPerCustomerMonth

      OfferingValidation : minimumCycles

      OfferingValidation : minimumDirectMarginPercent

      OfferingValidation : minimumPayingCustomers

      OfferingValidation : minimumRenewals


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [minimumPayingCustomers](minimumPayingCustomers.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [minimumCycles](minimumCycles.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [minimumRenewals](minimumRenewals.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [minimumDirectMarginPercent](minimumDirectMarginPercent.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [maximumMedianSupportMinutesPerCustomerMonth](maximumMedianSupportMinutesPerCustomerMonth.md) | 1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [validation](validation.md) | range | [OfferingValidation](OfferingValidation.md) |












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
| self | jumo:OfferingValidation |
| native | jumo:OfferingValidation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingValidation
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
  minimumPayingCustomers:
    name: minimumPayingCustomers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '5'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumCycles:
    name: minimumCycles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '3'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumRenewals:
    name: minimumRenewals
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '4'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumDirectMarginPercent:
    name: minimumDirectMarginPercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '60'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  maximumMedianSupportMinutesPerCustomerMonth:
    name: maximumMedianSupportMinutesPerCustomerMonth
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingValidation
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
  minimumPayingCustomers:
    name: minimumPayingCustomers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '5'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumCycles:
    name: minimumCycles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '3'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumRenewals:
    name: minimumRenewals
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '4'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  minimumDirectMarginPercent:
    name: minimumDirectMarginPercent
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '60'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true
  maximumMedianSupportMinutesPerCustomerMonth:
    name: maximumMedianSupportMinutesPerCustomerMonth
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '30'
    owner: OfferingValidation
    domain_of:
    - OfferingValidation
    range: integer
    required: true

```
</details></div>