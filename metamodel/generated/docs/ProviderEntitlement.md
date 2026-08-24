---
search:
  boost: 10.0
---

# Class: ProviderEntitlement

<div data-search-exclude markdown="1">



URI: [jumo:ProviderEntitlement](https://jumo.dev/schemas/jumo-v1/ProviderEntitlement)





```mermaid
 classDiagram
    class ProviderEntitlement
    click ProviderEntitlement href "../ProviderEntitlement/"
      ProviderEntitlement : holder





        ProviderEntitlement --> "1" EntitlementHolder : holder
        click EntitlementHolder href "../EntitlementHolder/"



      ProviderEntitlement : holderRef

      ProviderEntitlement : usePermissions





        ProviderEntitlement --> "1" EntitlementUsePermissions : usePermissions
        click EntitlementUsePermissions href "../EntitlementUsePermissions/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [holder](holder.md) | 1 <br/> [EntitlementHolder](EntitlementHolder.md) |  | direct |
| [holderRef](holderRef.md) | 1 <br/> [String](String.md) |  | direct |
| [usePermissions](usePermissions.md) | 1 <br/> [EntitlementUsePermissions](EntitlementUsePermissions.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProviderAccountSpec](ProviderAccountSpec.md) | [entitlement](entitlement.md) | range | [ProviderEntitlement](ProviderEntitlement.md) |












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
| self | jumo:ProviderEntitlement |
| native | jumo:ProviderEntitlement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProviderEntitlement
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
  holder:
    name: holder
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: EntitlementHolder
    required: true
  holderRef:
    name: holderRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: string
    required: true
    pattern: ^.{2,}$
  usePermissions:
    name: usePermissions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: EntitlementUsePermissions
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ProviderEntitlement
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
  holder:
    name: holder
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: EntitlementHolder
    required: true
  holderRef:
    name: holderRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: string
    required: true
    pattern: ^.{2,}$
  usePermissions:
    name: usePermissions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderEntitlement
    domain_of:
    - ProviderEntitlement
    range: EntitlementUsePermissions
    required: true
    inlined: true

```
</details></div>