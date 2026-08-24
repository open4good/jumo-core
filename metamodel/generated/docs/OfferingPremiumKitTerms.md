---
search:
  boost: 10.0
---

# Class: OfferingPremiumKitTerms

<div data-search-exclude markdown="1">



URI: [jumo:OfferingPremiumKitTerms](https://jumo.dev/schemas/jumo-v1/OfferingPremiumKitTerms)





```mermaid
 classDiagram
    class OfferingPremiumKitTerms
    click OfferingPremiumKitTerms href "../OfferingPremiumKitTerms/"
      OfferingPremiumKitTerms : catalogUpdatesRequireSubscription

      OfferingPremiumKitTerms : internalUsePerpetual

      OfferingPremiumKitTerms : redistribution





        OfferingPremiumKitTerms --> "1" RedistributionTerms : redistribution
        click RedistributionTerms href "../RedistributionTerms/"



      OfferingPremiumKitTerms : resaleSaaS





        OfferingPremiumKitTerms --> "1" RedistributionTerms : resaleSaaS
        click RedistributionTerms href "../RedistributionTerms/"



      OfferingPremiumKitTerms : sourceVisibility





        OfferingPremiumKitTerms --> "1" SourceVisibility : sourceVisibility
        click SourceVisibility href "../SourceVisibility/"



      OfferingPremiumKitTerms : supportRequireSubscription


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sourceVisibility](sourceVisibility.md) | 1 <br/> [SourceVisibility](SourceVisibility.md) |  | direct |
| [internalUsePerpetual](internalUsePerpetual.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [redistribution](redistribution.md) | 1 <br/> [RedistributionTerms](RedistributionTerms.md) |  | direct |
| [resaleSaaS](resaleSaaS.md) | 1 <br/> [RedistributionTerms](RedistributionTerms.md) |  | direct |
| [catalogUpdatesRequireSubscription](catalogUpdatesRequireSubscription.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [supportRequireSubscription](supportRequireSubscription.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingKits](OfferingKits.md) | [premium](premium.md) | range | [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |












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
| self | jumo:OfferingPremiumKitTerms |
| native | jumo:OfferingPremiumKitTerms |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingPremiumKitTerms
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
  sourceVisibility:
    name: sourceVisibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: SOURCE_VISIBLE
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: SourceVisibility
    required: true
  internalUsePerpetual:
    name: internalUsePerpetual
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true
  redistribution:
    name: redistribution
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: RedistributionTerms
    required: true
  resaleSaaS:
    name: resaleSaaS
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: RedistributionTerms
    required: true
  catalogUpdatesRequireSubscription:
    name: catalogUpdatesRequireSubscription
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true
  supportRequireSubscription:
    name: supportRequireSubscription
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingPremiumKitTerms
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
  sourceVisibility:
    name: sourceVisibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: SOURCE_VISIBLE
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: SourceVisibility
    required: true
  internalUsePerpetual:
    name: internalUsePerpetual
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true
  redistribution:
    name: redistribution
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: RedistributionTerms
    required: true
  resaleSaaS:
    name: resaleSaaS
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: FORBIDDEN
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: RedistributionTerms
    required: true
  catalogUpdatesRequireSubscription:
    name: catalogUpdatesRequireSubscription
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true
  supportRequireSubscription:
    name: supportRequireSubscription
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: OfferingPremiumKitTerms
    domain_of:
    - OfferingPremiumKitTerms
    range: boolean
    required: true

```
</details></div>