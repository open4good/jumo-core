---
search:
  boost: 10.0
---

# Class: WorkerIsolationLimits

<div data-search-exclude markdown="1">



URI: [jumo:WorkerIsolationLimits](https://jumo.dev/schemas/jumo-v1/WorkerIsolationLimits)





```mermaid
 classDiagram
    class WorkerIsolationLimits
    click WorkerIsolationLimits href "../WorkerIsolationLimits/"
      WorkerIsolationLimits : cpus

      WorkerIsolationLimits : memory

      WorkerIsolationLimits : pids

      WorkerIsolationLimits : wallClock


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [memory](memory.md) | 1 <br/> [String](String.md) |  | direct |
| [cpus](cpus.md) | 1 <br/> [Float](Float.md) |  | direct |
| [pids](pids.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [wallClock](wallClock.md) | 1 <br/> [Duration](Duration.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerIsolation](WorkerIsolation.md) | [limits](limits.md) | range | [WorkerIsolationLimits](WorkerIsolationLimits.md) |












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
| self | jumo:WorkerIsolationLimits |
| native | jumo:WorkerIsolationLimits |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerIsolationLimits
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
  memory:
    name: memory
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: string
    required: true
    pattern: ^[1-9][0-9]*(Mi|Gi)$
  cpus:
    name: cpus
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: float
    required: true
  pids:
    name: pids
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 1024
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolationLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
    required: true

```
</details>

### Induced

<details>
```yaml
name: WorkerIsolationLimits
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
  memory:
    name: memory
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: string
    required: true
    pattern: ^[1-9][0-9]*(Mi|Gi)$
  cpus:
    name: cpus
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: float
    required: true
  pids:
    name: pids
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerIsolationLimits
    domain_of:
    - WorkerIsolationLimits
    range: integer
    required: true
    minimum_value: 1
    maximum_value: 1024
  wallClock:
    name: wallClock
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerIsolationLimits
    domain_of:
    - ConsumptionReport
    - BudgetLimits
    - WorkerIsolationLimits
    range: Duration
    required: true

```
</details></div>