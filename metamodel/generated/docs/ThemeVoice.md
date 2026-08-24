---
search:
  boost: 10.0
---

# Class: ThemeVoice

<div data-search-exclude markdown="1">



URI: [jumo:ThemeVoice](https://jumo.dev/schemas/jumo-v1/ThemeVoice)





```mermaid
 classDiagram
    class ThemeVoice
    click ThemeVoice href "../ThemeVoice/"
      ThemeVoice : roleOverrides





        ThemeVoice --> "*" ThemeVoiceRoleOverride : roleOverrides
        click ThemeVoiceRoleOverride href "../ThemeVoiceRoleOverride/"



      ThemeVoice : style





        ThemeVoice --> "0..1" VoiceStyle : style
        click VoiceStyle href "../VoiceStyle/"



      ThemeVoice : verbosity





        ThemeVoice --> "0..1" VoiceVerbosity : verbosity
        click VoiceVerbosity href "../VoiceVerbosity/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [style](style.md) | 0..1 <br/> [VoiceStyle](VoiceStyle.md) |  | direct |
| [verbosity](verbosity.md) | 0..1 <br/> [VoiceVerbosity](VoiceVerbosity.md) |  | direct |
| [roleOverrides](roleOverrides.md) | * <br/> [ThemeVoiceRoleOverride](ThemeVoiceRoleOverride.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ThemePackSpec](ThemePackSpec.md) | [voice](voice.md) | range | [ThemeVoice](ThemeVoice.md) |












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
| self | jumo:ThemeVoice |
| native | jumo:ThemeVoice |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ThemeVoice
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
  style:
    name: style
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceStyle
  verbosity:
    name: verbosity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceVerbosity
  roleOverrides:
    name: roleOverrides
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    range: ThemeVoiceRoleOverride
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: ThemeVoice
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
  style:
    name: style
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceStyle
  verbosity:
    name: verbosity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    - ThemeVoiceRoleOverride
    range: VoiceVerbosity
  roleOverrides:
    name: roleOverrides
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemeVoice
    domain_of:
    - ThemeVoice
    range: ThemeVoiceRoleOverride
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>