---
search:
  boost: 10.0
---

# Class: OfferingPricing

<div data-search-exclude markdown="1">



URI: [jumo:OfferingPricing](https://jumo.dev/schemas/jumo-v1/OfferingPricing)





```mermaid
 classDiagram
    class OfferingPricing
    click OfferingPricing href "../OfferingPricing/"
      OfferingPricing : billingCadence





        OfferingPricing --> "1" BillingCadence : billingCadence
        click BillingCadence href "../BillingCadence/"



      OfferingPricing : minimumTermMonths

      OfferingPricing : monthlyFeeExVatEur

      OfferingPricing : setupFeeExVatEur

      OfferingPricing : vatTreatment





        OfferingPricing --> "1" VatTreatment : vatTreatment
        click VatTreatment href "../VatTreatment/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [monthlyFeeExVatEur](monthlyFeeExVatEur.md) | 1 <br/> [Float](Float.md) |  | direct |
| [setupFeeExVatEur](setupFeeExVatEur.md) | 1 <br/> [Float](Float.md) |  | direct |
| [billingCadence](billingCadence.md) | 1 <br/> [BillingCadence](BillingCadence.md) |  | direct |
| [minimumTermMonths](minimumTermMonths.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [vatTreatment](vatTreatment.md) | 1 <br/> [VatTreatment](VatTreatment.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [pricing](pricing.md) | range | [OfferingPricing](OfferingPricing.md) |












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
| self | jumo:OfferingPricing |
| native | jumo:OfferingPricing |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingPricing
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
  monthlyFeeExVatEur:
    name: monthlyFeeExVatEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '49'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: float
    required: true
  setupFeeExVatEur:
    name: setupFeeExVatEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '99'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: float
    required: true
  billingCadence:
    name: billingCadence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: MONTHLY
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: BillingCadence
    required: true
  minimumTermMonths:
    name: minimumTermMonths
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '0'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: integer
    required: true
  vatTreatment:
    name: vatTreatment
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: EX_VAT
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: VatTreatment
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingPricing
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
  monthlyFeeExVatEur:
    name: monthlyFeeExVatEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '49'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: float
    required: true
  setupFeeExVatEur:
    name: setupFeeExVatEur
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '99'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: float
    required: true
  billingCadence:
    name: billingCadence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: MONTHLY
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: BillingCadence
    required: true
  minimumTermMonths:
    name: minimumTermMonths
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: '0'
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: integer
    required: true
  vatTreatment:
    name: vatTreatment
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: EX_VAT
    owner: OfferingPricing
    domain_of:
    - OfferingPricing
    range: VatTreatment
    required: true

```
</details></div>