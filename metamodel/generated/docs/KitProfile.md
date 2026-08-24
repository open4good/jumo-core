---
search:
  boost: 10.0
---

# Class: KitProfile

<div data-search-exclude markdown="1">



URI: [jumo:KitProfile](https://jumo.dev/schemas/jumo-v1/KitProfile)





```mermaid
 classDiagram
    class KitProfile
    click KitProfile href "../KitProfile/"
      KitProfile : exports

      KitProfile : id

      KitProfile : includes


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [String](String.md) |  | direct |
| [exports](exports.md) | 1..* <br/> [String](String.md) |  | direct |
| [includes](includes.md) | * <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) | [profiles](profiles.md) | range | [KitProfile](KitProfile.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PERSONAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:KitProfile |
| native | jumo:KitProfile |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitProfile
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
    value: PERSONAL
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
    owner: KitProfile
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
    range: string
    required: true
    pattern: ^[a-z][a-z0-9-]*$
  exports:
    name: exports
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitProfile
    domain_of:
    - JumoKitSpec
    - KitProfile
    range: string
    required: true
    multivalued: true
    pattern: ^\.jumo/[A-Za-z0-9._/-]+\.yml$
    minimum_cardinality: 1
  includes:
    name: includes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitProfile
    domain_of:
    - KitProfile
    range: string
    multivalued: true
    pattern: ^[a-z][a-z0-9-]*$

```
</details>

### Induced

<details>
```yaml
name: KitProfile
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
    value: PERSONAL
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
    owner: KitProfile
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
    range: string
    required: true
    pattern: ^[a-z][a-z0-9-]*$
  exports:
    name: exports
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitProfile
    domain_of:
    - JumoKitSpec
    - KitProfile
    range: string
    required: true
    multivalued: true
    pattern: ^\.jumo/[A-Za-z0-9._/-]+\.yml$
    minimum_cardinality: 1
  includes:
    name: includes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitProfile
    domain_of:
    - KitProfile
    range: string
    multivalued: true
    pattern: ^[a-z][a-z0-9-]*$

```
</details></div>