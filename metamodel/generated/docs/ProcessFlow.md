---
search:
  boost: 10.0
---

# Class: ProcessFlow

<div data-search-exclude markdown="1">



URI: [jumo:ProcessFlow](https://jumo.dev/schemas/jumo-v1/ProcessFlow)





```mermaid
 classDiagram
    class ProcessFlow
    click ProcessFlow href "../ProcessFlow/"
      ProcessFlow : branchLabel

      ProcessFlow : from

      ProcessFlow : id

      ProcessFlow : payloadType

      ProcessFlow : to


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [from](from.md) | 1 <br/> [Identifier](Identifier.md) | A ProcessStep id in this same ProcessSpec | direct |
| [to](to.md) | 1 <br/> [Identifier](Identifier.md) | A ProcessStep id in this same ProcessSpec | direct |
| [branchLabel](branchLabel.md) | 0..1 <br/> [String](String.md) | Required when `from` names a GATEWAY step with more than one outgoing flow (R... | direct |
| [payloadType](payloadType.md) | 1 <br/> [String](String.md) | A generated LinkML class name; every edge carries an explicit typed payload | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProcessSpecBody](ProcessSpecBody.md) | [flows](flows.md) | range | [ProcessFlow](ProcessFlow.md) |












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
| self | jumo:ProcessFlow |
| native | jumo:ProcessFlow |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProcessFlow
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
    owner: ProcessFlow
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
  from:
    name: from
    description: A ProcessStep id in this same ProcessSpec.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProcessFlow
    domain_of:
    - SelfDescriptionFact
    - ProcessFlow
    range: Identifier
    required: true
  to:
    name: to
    description: A ProcessStep id in this same ProcessSpec.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: Identifier
    required: true
  branchLabel:
    name: branchLabel
    description: Required when `from` names a GATEWAY step with more than one outgoing
      flow (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: string
  payloadType:
    name: payloadType
    description: A generated LinkML class name; every edge carries an explicit typed
      payload.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: ProcessFlow
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
    owner: ProcessFlow
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
  from:
    name: from
    description: A ProcessStep id in this same ProcessSpec.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProcessFlow
    domain_of:
    - SelfDescriptionFact
    - ProcessFlow
    range: Identifier
    required: true
  to:
    name: to
    description: A ProcessStep id in this same ProcessSpec.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: Identifier
    required: true
  branchLabel:
    name: branchLabel
    description: Required when `from` names a GATEWAY step with more than one outgoing
      flow (Rego).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: string
  payloadType:
    name: payloadType
    description: A generated LinkML class name; every edge carries an explicit typed
      payload.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProcessFlow
    domain_of:
    - ProcessFlow
    range: string
    required: true

```
</details></div>