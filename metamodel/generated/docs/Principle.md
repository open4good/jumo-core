---
search:
  boost: 10.0
---

# Class: Principle

<div data-search-exclude markdown="1">



URI: [jumo:Principle](https://jumo.dev/schemas/jumo-v1/Principle)





```mermaid
 classDiagram
    class Principle
    click Principle href "../Principle/"
      Principle : id

      Principle : inspiresPolicies

      Principle : statement


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [statement](statement.md) | 1 <br/> [String](String.md) |  | direct |
| [inspiresPolicies](inspiresPolicies.md) | * <br/> [Identifier](Identifier.md) | A principle may inspire a policy, but the policy must be explicit and reviewa... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PrincipleSetSpec](PrincipleSetSpec.md) | [principles](principles.md) | range | [Principle](Principle.md) |












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
| self | jumo:Principle |
| native | jumo:Principle |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: Principle
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
    owner: Principle
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
  statement:
    name: statement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Principle
    domain_of:
    - Principle
    - AcceptanceCriterion
    range: string
    required: true
    pattern: ^.{10,}$
  inspiresPolicies:
    name: inspiresPolicies
    description: A principle may inspire a policy, but the policy must be explicit
      and reviewable (canonical decision 16). Documentation link, not an authorization
      path.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Principle
    domain_of:
    - Principle
    range: Identifier
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: Principle
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
    owner: Principle
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
  statement:
    name: statement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Principle
    domain_of:
    - Principle
    - AcceptanceCriterion
    range: string
    required: true
    pattern: ^.{10,}$
  inspiresPolicies:
    name: inspiresPolicies
    description: A principle may inspire a policy, but the policy must be explicit
      and reviewable (canonical decision 16). Documentation link, not an authorization
      path.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: Principle
    domain_of:
    - Principle
    range: Identifier
    multivalued: true

```
</details></div>