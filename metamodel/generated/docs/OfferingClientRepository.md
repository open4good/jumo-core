---
search:
  boost: 10.0
---

# Class: OfferingClientRepository

<div data-search-exclude markdown="1">



URI: [jumo:OfferingClientRepository](https://jumo.dev/schemas/jumo-v1/OfferingClientRepository)





```mermaid
 classDiagram
    class OfferingClientRepository
    click OfferingClientRepository href "../OfferingClientRepository/"
      OfferingClientRepository : ownership





        OfferingClientRepository --> "1" RepositoryOwnership : ownership
        click RepositoryOwnership href "../RepositoryOwnership/"



      OfferingClientRepository : visibility





        OfferingClientRepository --> "1" RepositoryVisibility : visibility
        click RepositoryVisibility href "../RepositoryVisibility/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownership](ownership.md) | 1 <br/> [RepositoryOwnership](RepositoryOwnership.md) |  | direct |
| [visibility](visibility.md) | 1 <br/> [RepositoryVisibility](RepositoryVisibility.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OfferingTopology](OfferingTopology.md) | [clientRepository](clientRepository.md) | range | [OfferingClientRepository](OfferingClientRepository.md) |












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
| self | jumo:OfferingClientRepository |
| native | jumo:OfferingClientRepository |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OfferingClientRepository
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
  ownership:
    name: ownership
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: CLIENT_OWNED
    owner: OfferingClientRepository
    domain_of:
    - OfferingClientRepository
    - OAuthClientBindingSpec
    range: RepositoryOwnership
    required: true
  visibility:
    name: visibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    ifabsent: PRIVATE
    owner: OfferingClientRepository
    domain_of:
    - ProjectSpec
    - OfferingClientRepository
    range: RepositoryVisibility
    required: true

```
</details>

### Induced

<details>
```yaml
name: OfferingClientRepository
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
  ownership:
    name: ownership
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: CLIENT_OWNED
    owner: OfferingClientRepository
    domain_of:
    - OfferingClientRepository
    - OAuthClientBindingSpec
    range: RepositoryOwnership
    required: true
  visibility:
    name: visibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    ifabsent: PRIVATE
    owner: OfferingClientRepository
    domain_of:
    - ProjectSpec
    - OfferingClientRepository
    range: RepositoryVisibility
    required: true

```
</details></div>