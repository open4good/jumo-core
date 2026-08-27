---
search:
  boost: 10.0
---

# Class: PolicyRule


_Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require obligations) moves to Rego._



<div data-search-exclude markdown="1">



URI: [jumo:PolicyRule](https://jumo.dev/schemas/jumo-v1/PolicyRule)





```mermaid
 classDiagram
    class PolicyRule
    click PolicyRule href "../PolicyRule/"
      PolicyRule : actions

      PolicyRule : effect





        PolicyRule --> "1" Effect : effect
        click Effect href "../Effect/"



      PolicyRule : id

      PolicyRule : obligations





        PolicyRule --> "*" Obligation : obligations
        click Obligation href "../Obligation/"



      PolicyRule : reasonCode

      PolicyRule : when


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [effect](effect.md) | 1 <br/> [Effect](Effect.md) |  | direct |
| [when](when.md) | 0..1 <br/> [String](String.md) | Named structural condition evaluated by the policy engine | direct |
| [actions](actions.md) | * <br/> [CapabilityName](CapabilityName.md) |  | direct |
| [obligations](obligations.md) | * <br/> [Obligation](Obligation.md) |  | direct |
| [reasonCode](reasonCode.md) | 0..1 <br/> [String](String.md) | Sanitized code safe to expose across a Realm boundary (canonical decision 66) | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PolicySetSpec](PolicySetSpec.md) | [rules](rules.md) | range | [PolicyRule](PolicyRule.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | POLICY |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:PolicyRule |
| native | jumo:PolicyRule |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PolicyRule
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require
  obligations) moves to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PolicyRule
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
  effect:
    name: effect
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - McpBundleOperation
    range: Effect
    required: true
  when:
    name: when
    description: Named structural condition evaluated by the policy engine. Free text
      is not permitted at evaluation time.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    range: string
  actions:
    name: actions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - ProjectionSpecBody
    range: CapabilityName
    multivalued: true
  obligations:
    name: obligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - ApiOperation
    - PolicyInput
    range: Obligation
    multivalued: true
  reasonCode:
    name: reasonCode
    description: Sanitized code safe to expose across a Realm boundary (canonical
      decision 66).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - RoutingDecision
    - McpInvocationOutcome
    range: string

```
</details>

### Induced

<details>
```yaml
name: PolicyRule
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require
  obligations) moves to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PolicyRule
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
  effect:
    name: effect
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - McpBundleOperation
    range: Effect
    required: true
  when:
    name: when
    description: Named structural condition evaluated by the policy engine. Free text
      is not permitted at evaluation time.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    range: string
  actions:
    name: actions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - ProjectionSpecBody
    range: CapabilityName
    multivalued: true
  obligations:
    name: obligations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - ApiOperation
    - PolicyInput
    range: Obligation
    multivalued: true
  reasonCode:
    name: reasonCode
    description: Sanitized code safe to expose across a Realm boundary (canonical
      decision 66).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PolicyRule
    domain_of:
    - PolicyRule
    - RoutingDecision
    - McpInvocationOutcome
    range: string

```
</details></div>