---
search:
  boost: 10.0
---

# Class: ProjectRuntime

<div data-search-exclude markdown="1">



URI: [jumo:ProjectRuntime](https://jumo.dev/schemas/jumo-v1/ProjectRuntime)





```mermaid
 classDiagram
    class ProjectRuntime
    click ProjectRuntime href "../ProjectRuntime/"
      ProjectRuntime : durableWorkflowEngine





        ProjectRuntime --> "0..1" DurableWorkflowEngine : durableWorkflowEngine
        click DurableWorkflowEngine href "../DurableWorkflowEngine/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [durableWorkflowEngine](durableWorkflowEngine.md) | 0..1 <br/> [DurableWorkflowEngine](DurableWorkflowEngine.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) | [runtime](runtime.md) | range | [ProjectRuntime](ProjectRuntime.md) |












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
| self | jumo:ProjectRuntime |
| native | jumo:ProjectRuntime |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProjectRuntime
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
  durableWorkflowEngine:
    name: durableWorkflowEngine
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectRuntime
    domain_of:
    - ProjectRuntime
    range: DurableWorkflowEngine

```
</details>

### Induced

<details>
```yaml
name: ProjectRuntime
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
  durableWorkflowEngine:
    name: durableWorkflowEngine
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectRuntime
    domain_of:
    - ProjectRuntime
    range: DurableWorkflowEngine

```
</details></div>