---
search:
  boost: 10.0
---

# Class: PreferencesSpec

<div data-search-exclude markdown="1">



URI: [jumo:PreferencesSpec](https://jumo.dev/schemas/jumo-v1/PreferencesSpec)





```mermaid
 classDiagram
    class PreferencesSpec
    click PreferencesSpec href "../PreferencesSpec/"
      PreferencesSpec : language

      PreferencesSpec : notifications





        PreferencesSpec --> "0..1" NotificationPreferences : notifications
        click NotificationPreferences href "../NotificationPreferences/"



      PreferencesSpec : ownerPrincipal

      PreferencesSpec : theme


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerPrincipal](ownerPrincipal.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [theme](theme.md) | 0..1 <br/> [String](String.md) |  | direct |
| [language](language.md) | 0..1 <br/> [String](String.md) |  | direct |
| [notifications](notifications.md) | 0..1 <br/> [NotificationPreferences](NotificationPreferences.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [Preferences](Preferences.md) | [spec](spec.md) | range | [PreferencesSpec](PreferencesSpec.md) |












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
| self | jumo:PreferencesSpec |
| native | jumo:PreferencesSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PreferencesSpec
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
  ownerPrincipal:
    name: ownerPrincipal
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PreferencesSpec
    domain_of:
    - PersonalSpaceSpec
    - PreferencesSpec
    range: Identifier
    required: true
  theme:
    name: theme
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: default
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: string
  language:
    name: language
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: en
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: string
  notifications:
    name: notifications
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: NotificationPreferences
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: PreferencesSpec
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
  ownerPrincipal:
    name: ownerPrincipal
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PreferencesSpec
    domain_of:
    - PersonalSpaceSpec
    - PreferencesSpec
    range: Identifier
    required: true
  theme:
    name: theme
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: default
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: string
  language:
    name: language
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: en
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: string
  notifications:
    name: notifications
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PreferencesSpec
    domain_of:
    - PreferencesSpec
    range: NotificationPreferences
    inlined: true

```
</details></div>