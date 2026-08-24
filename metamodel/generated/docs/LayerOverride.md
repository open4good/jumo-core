---
search:
  boost: 10.0
---

# Class: LayerOverride


_Explicit declaration of an overridden document from a lower layer or imported kit._



<div data-search-exclude markdown="1">



URI: [jumo:LayerOverride](https://jumo.dev/schemas/jumo-v1/LayerOverride)





```mermaid
 classDiagram
    class LayerOverride
    click LayerOverride href "../LayerOverride/"
      LayerOverride : id

      LayerOverride : layer


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [layer](layer.md) | 1 <br/> [String](String.md) |  | direct |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [Metadata](Metadata.md) | [overrides](overrides.md) | range | [LayerOverride](LayerOverride.md) |












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
| self | jumo:LayerOverride |
| native | jumo:LayerOverride |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: LayerOverride
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
description: Explicit declaration of an overridden document from a lower layer or
  imported kit.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  layer:
    name: layer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: LayerOverride
    domain_of:
    - LayerOverride
    range: string
    required: true
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: LayerOverride
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

```
</details>

### Induced

<details>
```yaml
name: LayerOverride
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
description: Explicit declaration of an overridden document from a lower layer or
  imported kit.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  layer:
    name: layer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: LayerOverride
    domain_of:
    - LayerOverride
    range: string
    required: true
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: LayerOverride
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

```
</details></div>