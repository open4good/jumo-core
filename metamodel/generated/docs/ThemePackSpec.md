---
search:
  boost: 10.0
---

# Class: ThemePackSpec

<div data-search-exclude markdown="1">



URI: [jumo:ThemePackSpec](https://jumo.dev/schemas/jumo-v1/ThemePackSpec)





```mermaid
 classDiagram
    class ThemePackSpec
    click ThemePackSpec href "../ThemePackSpec/"
      ThemePackSpec : terminology





        ThemePackSpec --> "1..*" TerminologyEntry : terminology
        click TerminologyEntry href "../TerminologyEntry/"



      ThemePackSpec : visualization





        ThemePackSpec --> "0..1" ThemeVisualization : visualization
        click ThemeVisualization href "../ThemeVisualization/"



      ThemePackSpec : voice





        ThemePackSpec --> "0..1" ThemeVoice : voice
        click ThemeVoice href "../ThemeVoice/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [terminology](terminology.md) | 1..* <br/> [TerminologyEntry](TerminologyEntry.md) | Display names by role key, such as chiefOfStaff or securityAgent | direct |
| [voice](voice.md) | 0..1 <br/> [ThemeVoice](ThemeVoice.md) |  | direct |
| [visualization](visualization.md) | 0..1 <br/> [ThemeVisualization](ThemeVisualization.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ThemePack](ThemePack.md) | [spec](spec.md) | range | [ThemePackSpec](ThemePackSpec.md) |












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
| self | jumo:ThemePackSpec |
| native | jumo:ThemePackSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ThemePackSpec
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
  terminology:
    name: terminology
    description: Display names by role key, such as chiefOfStaff or securityAgent.
      The technical identifier is unaffected.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: TerminologyEntry
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  voice:
    name: voice
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: ThemeVoice
    inlined: true
  visualization:
    name: visualization
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: ThemeVisualization
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ThemePackSpec
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
  terminology:
    name: terminology
    description: Display names by role key, such as chiefOfStaff or securityAgent.
      The technical identifier is unaffected.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: TerminologyEntry
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  voice:
    name: voice
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: ThemeVoice
    inlined: true
  visualization:
    name: visualization
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePackSpec
    domain_of:
    - ThemePackSpec
    range: ThemeVisualization
    inlined: true

```
</details></div>