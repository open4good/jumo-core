---
search:
  boost: 10.0
---

# Class: WorkerContextRequirement

<div data-search-exclude markdown="1">



URI: [jumo:WorkerContextRequirement](https://jumo.dev/schemas/jumo-v1/WorkerContextRequirement)





```mermaid
 classDiagram
    class WorkerContextRequirement
    click WorkerContextRequirement href "../WorkerContextRequirement/"
      WorkerContextRequirement : minimumTokens


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [minimumTokens](minimumTokens.md) | 1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) | [context](context.md) | range | [WorkerContextRequirement](WorkerContextRequirement.md) |












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
| self | jumo:WorkerContextRequirement |
| native | jumo:WorkerContextRequirement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerContextRequirement
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
  minimumTokens:
    name: minimumTokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerContextRequirement
    domain_of:
    - WorkerContextRequirement
    range: integer
    required: true
    minimum_value: 1024

```
</details>

### Induced

<details>
```yaml
name: WorkerContextRequirement
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
  minimumTokens:
    name: minimumTokens
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerContextRequirement
    domain_of:
    - WorkerContextRequirement
    range: integer
    required: true
    minimum_value: 1024

```
</details></div>