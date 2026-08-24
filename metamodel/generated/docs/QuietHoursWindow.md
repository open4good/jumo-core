---
search:
  boost: 10.0
---

# Class: QuietHoursWindow

<div data-search-exclude markdown="1">



URI: [jumo:QuietHoursWindow](https://jumo.dev/schemas/jumo-v1/QuietHoursWindow)





```mermaid
 classDiagram
    class QuietHoursWindow
    click QuietHoursWindow href "../QuietHoursWindow/"
      QuietHoursWindow : end

      QuietHoursWindow : start


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [start](start.md) | 1 <br/> [String](String.md) |  | direct |
| [end](end.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [NotificationPreferences](NotificationPreferences.md) | [quietHours](quietHours.md) | range | [QuietHoursWindow](QuietHoursWindow.md) |












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
| self | jumo:QuietHoursWindow |
| native | jumo:QuietHoursWindow |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: QuietHoursWindow
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
  start:
    name: start
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: QuietHoursWindow
    domain_of:
    - QuietHoursWindow
    range: string
    required: true
    pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]$
  end:
    name: end
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: QuietHoursWindow
    domain_of:
    - QuietHoursWindow
    range: string
    required: true
    pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]$

```
</details>

### Induced

<details>
```yaml
name: QuietHoursWindow
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
  start:
    name: start
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: QuietHoursWindow
    domain_of:
    - QuietHoursWindow
    range: string
    required: true
    pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]$
  end:
    name: end
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: QuietHoursWindow
    domain_of:
    - QuietHoursWindow
    range: string
    required: true
    pattern: ^([01][0-9]|2[0-3]):[0-5][0-9]$

```
</details></div>