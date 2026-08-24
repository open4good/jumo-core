---
search:
  boost: 10.0
---

# Class: RepositoryBinding

<div data-search-exclude markdown="1">



URI: [jumo:RepositoryBinding](https://jumo.dev/schemas/jumo-v1/RepositoryBinding)





```mermaid
 classDiagram
    class RepositoryBinding
    click RepositoryBinding href "../RepositoryBinding/"
      RepositoryBinding : approvalPolicy





        RepositoryBinding --> "0..1" SharedRepositoryApprovalPolicy : approvalPolicy
        click SharedRepositoryApprovalPolicy href "../SharedRepositoryApprovalPolicy/"



      RepositoryBinding : coOwnerRealms

      RepositoryBinding : id

      RepositoryBinding : provider





        RepositoryBinding --> "1" ForgeProvider : provider
        click ForgeProvider href "../ForgeProvider/"



      RepositoryBinding : repository


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [provider](provider.md) | 1 <br/> [ForgeProvider](ForgeProvider.md) |  | direct |
| [repository](repository.md) | 1 <br/> [String](String.md) | owner/name | direct |
| [coOwnerRealms](coOwnerRealms.md) | * <br/> [Identifier](Identifier.md) | Additional Realm identifiers that co-govern this repository | direct |
| [approvalPolicy](approvalPolicy.md) | 0..1 <br/> [SharedRepositoryApprovalPolicy](SharedRepositoryApprovalPolicy.md) | OWNER_ONLY (default): only the ownerRealm may authorize forge writes | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectSpec](ProjectSpec.md) | [repositoryBindings](repositoryBindings.md) | range | [RepositoryBinding](RepositoryBinding.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
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
| self | jumo:RepositoryBinding |
| native | jumo:RepositoryBinding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RepositoryBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
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
    owner: RepositoryBinding
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
  provider:
    name: provider
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    - ProviderAccountSpec
    - ChangeSetProjection
    range: ForgeProvider
    required: true
  repository:
    name: repository
    description: owner/name. A literal TODO is rejected (Rego, for the placeholder
      scan).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  coOwnerRealms:
    name: coOwnerRealms
    description: Additional Realm identifiers that co-govern this repository. When
      non-empty, all named Realms must declare a matching RepositoryBinding pointing
      at the same repository. Policy enforces mutual binding via Rego (corpus.project.mutual-repo-binding).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    range: Identifier
    multivalued: true
  approvalPolicy:
    name: approvalPolicy
    description: 'OWNER_ONLY (default): only the ownerRealm may authorize forge writes.
      MUTUAL_CONSENT: every co-owner Realm must signal approval before ForgeApplier
      merges.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    range: SharedRepositoryApprovalPolicy

```
</details>

### Induced

<details>
```yaml
name: RepositoryBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
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
    owner: RepositoryBinding
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
  provider:
    name: provider
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    - ProviderAccountSpec
    - ChangeSetProjection
    range: ForgeProvider
    required: true
  repository:
    name: repository
    description: owner/name. A literal TODO is rejected (Rego, for the placeholder
      scan).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  coOwnerRealms:
    name: coOwnerRealms
    description: Additional Realm identifiers that co-govern this repository. When
      non-empty, all named Realms must declare a matching RepositoryBinding pointing
      at the same repository. Policy enforces mutual binding via Rego (corpus.project.mutual-repo-binding).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    range: Identifier
    multivalued: true
  approvalPolicy:
    name: approvalPolicy
    description: 'OWNER_ONLY (default): only the ownerRealm may authorize forge writes.
      MUTUAL_CONSENT: every co-owner Realm must signal approval before ForgeApplier
      merges.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RepositoryBinding
    domain_of:
    - RepositoryBinding
    range: SharedRepositoryApprovalPolicy

```
</details></div>