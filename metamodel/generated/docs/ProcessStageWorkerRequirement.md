---
search:
  boost: 10.0
---

# Class: ProcessStageWorkerRequirement

<div data-search-exclude markdown="1">



URI: [jumo:ProcessStageWorkerRequirement](https://jumo.dev/schemas/jumo-v1/ProcessStageWorkerRequirement)





```mermaid
 classDiagram
    class ProcessStageWorkerRequirement
    click ProcessStageWorkerRequirement href "../ProcessStageWorkerRequirement/"
      ProcessStageWorkerRequirement : stepId

      ProcessStageWorkerRequirement : workerRequirementProfileRef





        ProcessStageWorkerRequirement --> "1" ContractReference : workerRequirementProfileRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [stepId](stepId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [workerRequirementProfileRef](workerRequirementProfileRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) | [stageWorkerRequirementRef](stageWorkerRequirementRef.md) | range | [ProcessStageWorkerRequirement](ProcessStageWorkerRequirement.md) |












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
| self | jumo:ProcessStageWorkerRequirement |
| native | jumo:ProcessStageWorkerRequirement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProcessStageWorkerRequirement
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
  stepId:
    name: stepId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessStageWorkerRequirement
    domain_of:
    - ProcessStageWorkerRequirement
    range: Identifier
    required: true
  workerRequirementProfileRef:
    name: workerRequirementProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProcessStageWorkerRequirement
    domain_of:
    - EngagementMethodSpec
    - CapabilityProfileSpec
    - GoldenTaskSetSpec
    - PromptTemplateSpec
    - ProcessStageWorkerRequirement
    range: ContractReference
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ProcessStageWorkerRequirement
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
  stepId:
    name: stepId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessStageWorkerRequirement
    domain_of:
    - ProcessStageWorkerRequirement
    range: Identifier
    required: true
  workerRequirementProfileRef:
    name: workerRequirementProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProcessStageWorkerRequirement
    domain_of:
    - EngagementMethodSpec
    - CapabilityProfileSpec
    - GoldenTaskSetSpec
    - PromptTemplateSpec
    - ProcessStageWorkerRequirement
    range: ContractReference
    required: true
    inlined: true

```
</details></div>