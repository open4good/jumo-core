---
search:
  boost: 10.0
---

# Class: EngagementStage

<div data-search-exclude markdown="1">



URI: [jumo:EngagementStage](https://jumo.dev/schemas/jumo-v1/EngagementStage)





```mermaid
 classDiagram
    class EngagementStage
    click EngagementStage href "../EngagementStage/"
      EngagementStage : deliverable

      EngagementStage : gate





        EngagementStage --> "1" EngagementGate : gate
        click EngagementGate href "../EngagementGate/"



      EngagementStage : id

      EngagementStage : promptTemplateRef





        EngagementStage --> "1" ContractReference : promptTemplateRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [promptTemplateRef](promptTemplateRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [gate](gate.md) | 1 <br/> [EngagementGate](EngagementGate.md) |  | direct |
| [deliverable](deliverable.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EngagementMethodSpec](EngagementMethodSpec.md) | [stages](stages.md) | range | [EngagementStage](EngagementStage.md) |












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
| self | jumo:EngagementStage |
| native | jumo:EngagementStage |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EngagementStage
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
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementStage
    domain_of:
    - ContractReference
    - Metadata
    - LayerOverride
    - Principle
    - Milestone
    - RepositoryBinding
    - KitProfile
    - KitModule
    - DispositionRule
    - SelfDescriptionSubject
    - AgentCardSkill
    - AcceptanceCriterion
    - EngagementStage
    - GoldenTaskCase
    - AssistedJourneyStep
    - PolicyRule
    - AttentionDecisionOption
    - ProcessStep
    - ProcessFlow
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ConnectorOperation
    - McpBundleOperation
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - Surface
    - ProjectionSection
    range: Identifier
    required: true
  promptTemplateRef:
    name: promptTemplateRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    - AssistedJourneyStep
    range: ContractReference
    required: true
    inlined: true
  gate:
    name: gate
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    range: EngagementGate
    required: true
  deliverable:
    name: deliverable
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    range: string
    required: true
    pattern: ^.{3,}$

```
</details>

### Induced

<details>
```yaml
name: EngagementStage
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
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EngagementStage
    domain_of:
    - ContractReference
    - Metadata
    - LayerOverride
    - Principle
    - Milestone
    - RepositoryBinding
    - KitProfile
    - KitModule
    - DispositionRule
    - SelfDescriptionSubject
    - AgentCardSkill
    - AcceptanceCriterion
    - EngagementStage
    - GoldenTaskCase
    - AssistedJourneyStep
    - PolicyRule
    - AttentionDecisionOption
    - ProcessStep
    - ProcessFlow
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ConnectorOperation
    - McpBundleOperation
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - Surface
    - ProjectionSection
    range: Identifier
    required: true
  promptTemplateRef:
    name: promptTemplateRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    - AssistedJourneyStep
    range: ContractReference
    required: true
    inlined: true
  gate:
    name: gate
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    range: EngagementGate
    required: true
  deliverable:
    name: deliverable
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EngagementStage
    domain_of:
    - EngagementStage
    range: string
    required: true
    pattern: ^.{3,}$

```
</details></div>