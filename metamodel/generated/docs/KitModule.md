---
search:
  boost: 10.0
---

# Class: KitModule

<div data-search-exclude markdown="1">



URI: [jumo:KitModule](https://jumo.dev/schemas/jumo-v1/KitModule)





```mermaid
 classDiagram
    class KitModule
    click KitModule href "../KitModule/"
      KitModule : capabilityRefs

      KitModule : entrypoint

      KitModule : id

      KitModule : sourcePath

      KitModule : type





        KitModule --> "1" KitModuleType : type
        click KitModuleType href "../KitModuleType/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [String](String.md) |  | direct |
| [type](type.md) | 1 <br/> [KitModuleType](KitModuleType.md) |  | direct |
| [sourcePath](sourcePath.md) | 1 <br/> [String](String.md) |  | direct |
| [entrypoint](entrypoint.md) | 1 <br/> [String](String.md) |  | direct |
| [capabilityRefs](capabilityRefs.md) | * <br/> [CapabilityName](CapabilityName.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [JumoKitSpec](JumoKitSpec.md) | [modules](modules.md) | range | [KitModule](KitModule.md) |












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
| self | jumo:KitModule |
| native | jumo:KitModule |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitModule
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
    owner: KitModule
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
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitModule
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: KitModuleType
    required: true
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^[A-Za-z0-9._/-]+$
  entrypoint:
    name: entrypoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - McpBundleRuntime
    range: string
    required: true
    pattern: ^[a-z][A-Za-z0-9_.]*\.[A-Z][A-Za-z0-9]*$
  capabilityRefs:
    name: capabilityRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - AgentCardSkill
    range: CapabilityName
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: KitModule
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
    owner: KitModule
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
  type:
    name: type
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitModule
    domain_of:
    - KitBindingDeclaration
    - KitModule
    - AttentionItemSpec
    - FederationMessage
    - ApiProblem
    range: KitModuleType
    required: true
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^[A-Za-z0-9._/-]+$
  entrypoint:
    name: entrypoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - McpBundleRuntime
    range: string
    required: true
    pattern: ^[a-z][A-Za-z0-9_.]*\.[A-Z][A-Za-z0-9]*$
  capabilityRefs:
    name: capabilityRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitModule
    domain_of:
    - KitModule
    - AgentCardSkill
    range: CapabilityName
    multivalued: true

```
</details></div>