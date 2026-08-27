---
search:
  boost: 10.0
---

# Class: DispositionRule

<div data-search-exclude markdown="1">



URI: [jumo:DispositionRule](https://jumo.dev/schemas/jumo-v1/DispositionRule)





```mermaid
 classDiagram
    class DispositionRule
    click DispositionRule href "../DispositionRule/"
      DispositionRule : id

      DispositionRule : match





        DispositionRule --> "1" DispositionMatch : match
        click DispositionMatch href "../DispositionMatch/"



      DispositionRule : outcome





        DispositionRule --> "1" DispositionOutcome : outcome
        click DispositionOutcome href "../DispositionOutcome/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [match](match.md) | 1 <br/> [DispositionMatch](DispositionMatch.md) |  | direct |
| [outcome](outcome.md) | 1 <br/> [DispositionOutcome](DispositionOutcome.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) | [dispositionRules](dispositionRules.md) | range | [DispositionRule](DispositionRule.md) |












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
| self | jumo:DispositionRule |
| native | jumo:DispositionRule |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: DispositionRule
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
    owner: DispositionRule
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
  match:
    name: match
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionRule
    domain_of:
    - DispositionRule
    range: DispositionMatch
    required: true
    inlined: true
  outcome:
    name: outcome
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionRule
    domain_of:
    - DispositionRule
    - McpCatalogAssessment
    - AppraisalDimension
    - McpInvocationOutcome
    range: DispositionOutcome
    required: true

```
</details>

### Induced

<details>
```yaml
name: DispositionRule
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
    owner: DispositionRule
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
  match:
    name: match
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionRule
    domain_of:
    - DispositionRule
    range: DispositionMatch
    required: true
    inlined: true
  outcome:
    name: outcome
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: DispositionRule
    domain_of:
    - DispositionRule
    - McpCatalogAssessment
    - AppraisalDimension
    - McpInvocationOutcome
    range: DispositionOutcome
    required: true

```
</details></div>