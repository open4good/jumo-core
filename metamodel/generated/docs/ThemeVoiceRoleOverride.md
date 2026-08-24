---
search:
  boost: 10.0
---

# Class: ThemeVoiceRoleOverride

<div data-search-exclude markdown="1">



URI: [jumo:ThemeVoiceRoleOverride](https://jumo.dev/schemas/jumo-v1/ThemeVoiceRoleOverride)





```mermaid
 classDiagram
    class ThemeVoiceRoleOverride
    click ThemeVoiceRoleOverride href "../ThemeVoiceRoleOverride/"
      ThemeVoiceRoleOverride : roleKey

      ThemeVoiceRoleOverride : style





        ThemeVoiceRoleOverride --> "0..1" VoiceStyle : style
        click VoiceStyle href "../VoiceStyle/"



      ThemeVoiceRoleOverride : verbosity





        ThemeVoiceRoleOverride --> "0..1" VoiceVerbosity : verbosity
        click VoiceVerbosity href "../VoiceVerbosity/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [roleKey](roleKey.md) | 1 <br/> [String](String.md) |  | direct |
| [style](style.md) | 0..1 <br/> [VoiceStyle](VoiceStyle.md) |  | direct |
| [verbosity](verbosity.md) | 0..1 <br/> [VoiceVerbosity](VoiceVerbosity.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ThemeVoice](ThemeVoice.md) | [roleOverrides](roleOverrides.md) | range | [ThemeVoiceRoleOverride](ThemeVoiceRoleOverride.md) |












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
| self | jumo:ThemeVoiceRoleOverride |
| native | jumo:ThemeVoiceRoleOverride |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ThemeVoiceRoleOverride
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
  roleKey:
    name: roleKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    required: true
    pattern: ^[a-z][A-Za-z0-9]*$
  style:
    name: style
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceStyle
  verbosity:
    name: verbosity
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceVerbosity

```
</details>

### Induced

<details>
```yaml
name: ThemeVoiceRoleOverride
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
  roleKey:
    name: roleKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    required: true
    pattern: ^[a-z][A-Za-z0-9]*$
  style:
    name: style
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceStyle
  verbosity:
    name: verbosity
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ThemeVoiceRoleOverride
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceVerbosity

```
</details></div>