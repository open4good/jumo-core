---
search:
  boost: 10.0
---

# Class: WorkerQualityRequirement

<div data-search-exclude markdown="1">



URI: [jumo:WorkerQualityRequirement](https://jumo.dev/schemas/jumo-v1/WorkerQualityRequirement)





```mermaid
 classDiagram
    class WorkerQualityRequirement
    click WorkerQualityRequirement href "../WorkerQualityRequirement/"
      WorkerQualityRequirement : goldenTaskSetRefs





        WorkerQualityRequirement --> "*" ContractReference : goldenTaskSetRefs
        click ContractReference href "../ContractReference/"



      WorkerQualityRequirement : maximumEvaluationAge

      WorkerQualityRequirement : minimumAssurance





        WorkerQualityRequirement --> "1" AssuranceLevel : minimumAssurance
        click AssuranceLevel href "../AssuranceLevel/"



      WorkerQualityRequirement : minimumReliability

      WorkerQualityRequirement : minimumTaskHorizon

      WorkerQualityRequirement : reasoningEffort





        WorkerQualityRequirement --> "0..1" ReasoningEffort : reasoningEffort
        click ReasoningEffort href "../ReasoningEffort/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [minimumAssurance](minimumAssurance.md) | 1 <br/> [AssuranceLevel](AssuranceLevel.md) |  | direct |
| [minimumReliability](minimumReliability.md) | 1 <br/> [Float](Float.md) |  | direct |
| [minimumTaskHorizon](minimumTaskHorizon.md) | 1 <br/> [Duration](Duration.md) |  | direct |
| [maximumEvaluationAge](maximumEvaluationAge.md) | 1 <br/> [Duration](Duration.md) |  | direct |
| [reasoningEffort](reasoningEffort.md) | 0..1 <br/> [ReasoningEffort](ReasoningEffort.md) |  | direct |
| [goldenTaskSetRefs](goldenTaskSetRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) | [quality](quality.md) | range | [WorkerQualityRequirement](WorkerQualityRequirement.md) |












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
| self | jumo:WorkerQualityRequirement |
| native | jumo:WorkerQualityRequirement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerQualityRequirement
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
  minimumAssurance:
    name: minimumAssurance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    - PromptTemplateSpec
    - ResourceBudgetSpec
    - ActionCapability
    range: AssuranceLevel
    required: true
  minimumReliability:
    name: minimumReliability
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: float
    required: true
    minimum_value: 0
    maximum_value: 1
  minimumTaskHorizon:
    name: minimumTaskHorizon
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: Duration
    required: true
  maximumEvaluationAge:
    name: maximumEvaluationAge
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: Duration
    required: true
  reasoningEffort:
    name: reasoningEffort
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    - ProviderNativeEffort
    range: ReasoningEffort
  goldenTaskSetRefs:
    name: goldenTaskSetRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: WorkerQualityRequirement
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
  minimumAssurance:
    name: minimumAssurance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    - PromptTemplateSpec
    - ResourceBudgetSpec
    - ActionCapability
    range: AssuranceLevel
    required: true
  minimumReliability:
    name: minimumReliability
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: float
    required: true
    minimum_value: 0
    maximum_value: 1
  minimumTaskHorizon:
    name: minimumTaskHorizon
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: Duration
    required: true
  maximumEvaluationAge:
    name: maximumEvaluationAge
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: Duration
    required: true
  reasoningEffort:
    name: reasoningEffort
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    - ProviderNativeEffort
    range: ReasoningEffort
  goldenTaskSetRefs:
    name: goldenTaskSetRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerQualityRequirement
    domain_of:
    - WorkerQualityRequirement
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>