---
search:
  boost: 10.0
---

# Class: OfferingKits

<div data-search-exclude markdown="1">



URI: [jumo:OfferingKits](https://jumo.dev/schemas/jumo-v1/OfferingKits)





```mermaid
 classDiagram
    class OfferingKits
    click OfferingKits href "../OfferingKits/"
      OfferingKits : premium





        OfferingKits --> "1" OfferingPremiumKitTerms : premium
        click OfferingPremiumKitTerms href "../OfferingPremiumKitTerms/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [premium](premium.md) | 1 <br/> [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingSpecBody](OfferingSpecBody.md) | [kits](kits.md) | range | [OfferingKits](OfferingKits.md) |












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
| self | jumo:OfferingKits |
| native | jumo:OfferingKits |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingKits
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
  premium:
    name: premium
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OfferingKits
    domain_of:
    - OfferingKits
    range: OfferingPremiumKitTerms
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: OfferingKits
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
  premium:
    name: premium
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OfferingKits
    domain_of:
    - OfferingKits
    range: OfferingPremiumKitTerms
    required: true
    inlined: true

```
</details></div>