---
search:
  boost: 10.0
---

# Class: EntitlementUsePermissions

<div data-search-exclude markdown="1">



URI: [jumo:EntitlementUsePermissions](https://jumo.dev/schemas/jumo-v1/EntitlementUsePermissions)





```mermaid
 classDiagram
    class EntitlementUsePermissions
    click EntitlementUsePermissions href "../EntitlementUsePermissions/"
      EntitlementUsePermissions : holderOperated





        EntitlementUsePermissions --> "1" EntitlementUseContext : holderOperated
        click EntitlementUseContext href "../EntitlementUseContext/"



      EntitlementUsePermissions : jumoManaged





        EntitlementUsePermissions --> "1" EntitlementUseContext : jumoManaged
        click EntitlementUseContext href "../EntitlementUseContext/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [holderOperated](holderOperated.md) | 1 <br/> [EntitlementUseContext](EntitlementUseContext.md) |  | direct |
| [jumoManaged](jumoManaged.md) | 1 <br/> [EntitlementUseContext](EntitlementUseContext.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProviderEntitlement](ProviderEntitlement.md) | [usePermissions](usePermissions.md) | range | [EntitlementUsePermissions](EntitlementUsePermissions.md) |












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
| self | jumo:EntitlementUsePermissions |
| native | jumo:EntitlementUsePermissions |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EntitlementUsePermissions
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
  holderOperated:
    name: holderOperated
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUsePermissions
    domain_of:
    - EntitlementUsePermissions
    range: EntitlementUseContext
    required: true
    inlined: true
  jumoManaged:
    name: jumoManaged
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUsePermissions
    domain_of:
    - EntitlementUsePermissions
    range: EntitlementUseContext
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: EntitlementUsePermissions
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
  holderOperated:
    name: holderOperated
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUsePermissions
    domain_of:
    - EntitlementUsePermissions
    range: EntitlementUseContext
    required: true
    inlined: true
  jumoManaged:
    name: jumoManaged
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EntitlementUsePermissions
    domain_of:
    - EntitlementUsePermissions
    range: EntitlementUseContext
    required: true
    inlined: true

```
</details></div>