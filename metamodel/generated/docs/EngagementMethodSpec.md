---
search:
  boost: 10.0
---

# Class: EngagementMethodSpec

<div data-search-exclude markdown="1">



URI: [jumo:EngagementMethodSpec](https://jumo.dev/schemas/jumo-v1/EngagementMethodSpec)





```mermaid
 classDiagram
    class EngagementMethodSpec
    click EngagementMethodSpec href "../EngagementMethodSpec/"
      EngagementMethodSpec : agentDefinitionRef





        EngagementMethodSpec --> "1" ContractReference : agentDefinitionRef
        click ContractReference href "../ContractReference/"



      EngagementMethodSpec : assurance





        EngagementMethodSpec --> "1" AssuranceLevel : assurance
        click AssuranceLevel href "../AssuranceLevel/"



      EngagementMethodSpec : resourceBudgetRef





        EngagementMethodSpec --> "1" ContractReference : resourceBudgetRef
        click ContractReference href "../ContractReference/"



      EngagementMethodSpec : stages





        EngagementMethodSpec --> "1..*" EngagementStage : stages
        click EngagementStage href "../EngagementStage/"



      EngagementMethodSpec : termination





        EngagementMethodSpec --> "1" EngagementTermination : termination
        click EngagementTermination href "../EngagementTermination/"



      EngagementMethodSpec : workerRequirementProfileRef





        EngagementMethodSpec --> "1" ContractReference : workerRequirementProfileRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [agentDefinitionRef](agentDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [workerRequirementProfileRef](workerRequirementProfileRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [resourceBudgetRef](resourceBudgetRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [assurance](assurance.md) | 1 <br/> [AssuranceLevel](AssuranceLevel.md) |  | direct |
| [stages](stages.md) | 1..* <br/> [EngagementStage](EngagementStage.md) |  | direct |
| [termination](termination.md) | 1 <br/> [EngagementTermination](EngagementTermination.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EngagementMethod](EngagementMethod.md) | [spec](spec.md) | range | [EngagementMethodSpec](EngagementMethodSpec.md) |












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
| self | jumo:EngagementMethodSpec |
| native | jumo:EngagementMethodSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EngagementMethodSpec
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
  agentDefinitionRef:
    name: agentDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementMethodSpec
    domain_of:
    - RoleBearer
    - EngagementMethodSpec
    - PromptTemplateSpec
    range: ContractReference
    required: true
    inlined: true
  workerRequirementProfileRef:
    name: workerRequirementProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    - CapabilityProfileSpec
    - GoldenTaskSetSpec
    - PromptTemplateSpec
    - ProcessStageWorkerRequirement
    range: ContractReference
    required: true
    inlined: true
  resourceBudgetRef:
    name: resourceBudgetRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementMethodSpec
    domain_of:
    - WorkOrderSpec
    - EngagementMethodSpec
    - PracticeSpec
    - PromptTemplateSpec
    - AssistedJourneySpec
    - ProcessSpecBody
    range: ContractReference
    required: true
    inlined: true
  assurance:
    name: assurance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: AssuranceLevel
    required: true
  stages:
    name: stages
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: EngagementStage
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  termination:
    name: termination
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: EngagementTermination
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: EngagementMethodSpec
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
  agentDefinitionRef:
    name: agentDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementMethodSpec
    domain_of:
    - RoleBearer
    - EngagementMethodSpec
    - PromptTemplateSpec
    range: ContractReference
    required: true
    inlined: true
  workerRequirementProfileRef:
    name: workerRequirementProfileRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    - CapabilityProfileSpec
    - GoldenTaskSetSpec
    - PromptTemplateSpec
    - ProcessStageWorkerRequirement
    range: ContractReference
    required: true
    inlined: true
  resourceBudgetRef:
    name: resourceBudgetRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementMethodSpec
    domain_of:
    - WorkOrderSpec
    - EngagementMethodSpec
    - PracticeSpec
    - PromptTemplateSpec
    - AssistedJourneySpec
    - ProcessSpecBody
    range: ContractReference
    required: true
    inlined: true
  assurance:
    name: assurance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: AssuranceLevel
    required: true
  stages:
    name: stages
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: EngagementStage
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  termination:
    name: termination
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementMethodSpec
    domain_of:
    - EngagementMethodSpec
    range: EngagementTermination
    required: true
    inlined: true

```
</details></div>