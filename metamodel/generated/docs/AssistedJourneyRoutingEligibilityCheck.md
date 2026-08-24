---
search:
  boost: 10.0
---

# Class: AssistedJourneyRoutingEligibilityCheck

<div data-search-exclude markdown="1">



URI: [jumo:AssistedJourneyRoutingEligibilityCheck](https://jumo.dev/schemas/jumo-v1/AssistedJourneyRoutingEligibilityCheck)





```mermaid
 classDiagram
    class AssistedJourneyRoutingEligibilityCheck
    click AssistedJourneyRoutingEligibilityCheck href "../AssistedJourneyRoutingEligibilityCheck/"
      AssistedJourneyRoutingEligibilityCheck : projectField

      AssistedJourneyRoutingEligibilityCheck : teamField


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [projectField](projectField.md) | 1 <br/> [String](String.md) |  | direct |
| [teamField](teamField.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | [routingEligibilityCheck](routingEligibilityCheck.md) | range | [AssistedJourneyRoutingEligibilityCheck](AssistedJourneyRoutingEligibilityCheck.md) |












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
| self | jumo:AssistedJourneyRoutingEligibilityCheck |
| native | jumo:AssistedJourneyRoutingEligibilityCheck |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AssistedJourneyRoutingEligibilityCheck
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
  projectField:
    name: projectField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRoutingEligibilityCheck
    domain_of:
    - AssistedJourneyRoutingEligibilityCheck
    range: string
    required: true
  teamField:
    name: teamField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRoutingEligibilityCheck
    domain_of:
    - AssistedJourneyRoutingEligibilityCheck
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: AssistedJourneyRoutingEligibilityCheck
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
  projectField:
    name: projectField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRoutingEligibilityCheck
    domain_of:
    - AssistedJourneyRoutingEligibilityCheck
    range: string
    required: true
  teamField:
    name: teamField
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AssistedJourneyRoutingEligibilityCheck
    domain_of:
    - AssistedJourneyRoutingEligibilityCheck
    range: string
    required: true

```
</details></div>