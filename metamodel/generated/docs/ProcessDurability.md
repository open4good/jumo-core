---
search:
  boost: 10.0
---

# Class: ProcessDurability

<div data-search-exclude markdown="1">



URI: [jumo:ProcessDurability](https://jumo.dev/schemas/jumo-v1/ProcessDurability)





```mermaid
 classDiagram
    class ProcessDurability
    click ProcessDurability href "../ProcessDurability/"
      ProcessDurability : expectedMaximum

      ProcessDurability : historyRetention





        ProcessDurability --> "0..1" ProcessHistoryRetention : historyRetention
        click ProcessHistoryRetention href "../ProcessHistoryRetention/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [expectedMaximum](expectedMaximum.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |
| [historyRetention](historyRetention.md) | 0..1 <br/> [ProcessHistoryRetention](ProcessHistoryRetention.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) | [durability](durability.md) | range | [ProcessDurability](ProcessDurability.md) |












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
| self | jumo:ProcessDurability |
| native | jumo:ProcessDurability |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProcessDurability
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
  expectedMaximum:
    name: expectedMaximum
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessDurability
    domain_of:
    - ProcessDurability
    range: Duration
  historyRetention:
    name: historyRetention
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessDurability
    domain_of:
    - ProcessDurability
    range: ProcessHistoryRetention

```
</details>

### Induced

<details>
```yaml
name: ProcessDurability
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
  expectedMaximum:
    name: expectedMaximum
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessDurability
    domain_of:
    - ProcessDurability
    range: Duration
  historyRetention:
    name: historyRetention
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessDurability
    domain_of:
    - ProcessDurability
    range: ProcessHistoryRetention

```
</details></div>