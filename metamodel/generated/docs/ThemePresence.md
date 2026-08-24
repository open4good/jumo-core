---
search:
  boost: 10.0
---

# Class: ThemePresence


_How the Chief of Staff is drawn on a surface. Every field here is presentation: there is no data source, no scope and no threshold, so the representation cannot become the thing represented._



<div data-search-exclude markdown="1">



URI: [jumo:ThemePresence](https://jumo.dev/schemas/jumo-v1/ThemePresence)





```mermaid
 classDiagram
    class ThemePresence
    click ThemePresence href "../ThemePresence/"
      ThemePresence : chiefOfStaffForm

      ThemePresence : density





        ThemePresence --> "0..1" PresenceDensity : density
        click PresenceDensity href "../PresenceDensity/"



      ThemePresence : motion





        ThemePresence --> "0..1" PresenceMotion : motion
        click PresenceMotion href "../PresenceMotion/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [chiefOfStaffForm](chiefOfStaffForm.md) | 0..1 <br/> [String](String.md) | Named visual form | direct |
| [density](density.md) | 0..1 <br/> [PresenceDensity](PresenceDensity.md) |  | direct |
| [motion](motion.md) | 0..1 <br/> [PresenceMotion](PresenceMotion.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ThemeVisualization](ThemeVisualization.md) | [presence](presence.md) | range | [ThemePresence](ThemePresence.md) |












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
| self | jumo:ThemePresence |
| native | jumo:ThemePresence |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ThemePresence
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
description: 'How the Chief of Staff is drawn on a surface. Every field here is presentation:
  there is no data source, no scope and no threshold, so the representation cannot
  become the thing represented.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  chiefOfStaffForm:
    name: chiefOfStaffForm
    description: Named visual form. Naming one does not name an agent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: string
    pattern: ^.{3,}$
  density:
    name: density
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: PresenceDensity
  motion:
    name: motion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: PresenceMotion

```
</details>

### Induced

<details>
```yaml
name: ThemePresence
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
description: 'How the Chief of Staff is drawn on a surface. Every field here is presentation:
  there is no data source, no scope and no threshold, so the representation cannot
  become the thing represented.'
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  chiefOfStaffForm:
    name: chiefOfStaffForm
    description: Named visual form. Naming one does not name an agent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: string
    pattern: ^.{3,}$
  density:
    name: density
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: PresenceDensity
  motion:
    name: motion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ThemePresence
    domain_of:
    - ThemePresence
    range: PresenceMotion

```
</details></div>