---
search:
  boost: 10.0
---

# Class: McpBundleOperation

<div data-search-exclude markdown="1">



URI: [jumo:McpBundleOperation](https://jumo.dev/schemas/jumo-v1/McpBundleOperation)





```mermaid
 classDiagram
    class McpBundleOperation
    click McpBundleOperation href "../McpBundleOperation/"
      McpBundleOperation : agentGuidance

      McpBundleOperation : capabilityRef

      McpBundleOperation : description

      McpBundleOperation : effect





        McpBundleOperation --> "1" OperationEffect : effect
        click OperationEffect href "../OperationEffect/"



      McpBundleOperation : exposedName

      McpBundleOperation : id

      McpBundleOperation : idempotency





        McpBundleOperation --> "1" OperationIdempotency : idempotency
        click OperationIdempotency href "../OperationIdempotency/"



      McpBundleOperation : inputSchemaRef

      McpBundleOperation : killSwitchRef

      McpBundleOperation : outputSchemaRef

      McpBundleOperation : reconciliation





        McpBundleOperation --> "1" OperationReconciliation : reconciliation
        click OperationReconciliation href "../OperationReconciliation/"



      McpBundleOperation : recoveryPlanDigest

      McpBundleOperation : secretBindingRefs





        McpBundleOperation --> "*" ContractReference : secretBindingRefs
        click ContractReference href "../ContractReference/"



      McpBundleOperation : untrustedOutput

      McpBundleOperation : upstreamToolName


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [exposedName](exposedName.md) | 1 <br/> [String](String.md) |  | direct |
| [upstreamToolName](upstreamToolName.md) | 1 <br/> [String](String.md) | The raw MCP tool this semantic operation wraps | direct |
| [untrustedOutput](untrustedOutput.md) | 1 <br/> [Boolean](Boolean.md) | Whether this operation returns content originating outside the trust boundary | direct |
| [agentGuidance](agentGuidance.md) | 0..1 <br/> [String](String.md) | When to reach for this operation and when not to, written for the choosing ag... | direct |
| [capabilityRef](capabilityRef.md) | 1 <br/> [CapabilityName](CapabilityName.md) |  | direct |
| [description](description.md) | 1 <br/> [String](String.md) |  | direct |
| [effect](effect.md) | 1 <br/> [OperationEffect](OperationEffect.md) |  | direct |
| [idempotency](idempotency.md) | 1 <br/> [OperationIdempotency](OperationIdempotency.md) |  | direct |
| [reconciliation](reconciliation.md) | 1 <br/> [OperationReconciliation](OperationReconciliation.md) |  | direct |
| [inputSchemaRef](inputSchemaRef.md) | 0..1 <br/> [String](String.md) |  | direct |
| [outputSchemaRef](outputSchemaRef.md) | 0..1 <br/> [String](String.md) |  | direct |
| [secretBindingRefs](secretBindingRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |
| [recoveryPlanDigest](recoveryPlanDigest.md) | 0..1 <br/> [String](String.md) | Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-... | direct |
| [killSwitchRef](killSwitchRef.md) | 0..1 <br/> [String](String.md) | Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-... | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpBundleSemanticProfile](McpBundleSemanticProfile.md) | [operations](operations.md) | range | [McpBundleOperation](McpBundleOperation.md) |












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
| self | jumo:McpBundleOperation |
| native | jumo:McpBundleOperation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpBundleOperation
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
    owner: McpBundleOperation
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
  exposedName:
    name: exposedName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    - PlannedOperation
    range: string
    required: true
    pattern: ^.{3,}$
  upstreamToolName:
    name: upstreamToolName
    description: The raw MCP tool this semantic operation wraps. Never leaves this
      document -- there is no generic connector.invoke (ADR-0019, decision 161).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - UpstreamToolEntry
    - McpBundleOperation
    - PlannedOperation
    range: string
    required: true
    pattern: ^.{1,}$
  untrustedOutput:
    name: untrustedOutput
    description: Whether this operation returns content originating outside the trust
      boundary.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: boolean
    required: true
  agentGuidance:
    name: agentGuidance
    description: When to reach for this operation and when not to, written for the
      choosing agent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^.{10,}$
  capabilityRef:
    name: capabilityRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ImprovementTarget
    - AttentionDecisionOption
    - ProcessStep
    - ConnectorOperation
    - McpBundleOperation
    - SurfaceWritePath
    range: CapabilityName
    required: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - PlannedOperation
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string
    required: true
    pattern: ^.{10,}$
  effect:
    name: effect
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - PolicyRule
    - McpBundleOperation
    range: OperationEffect
    required: true
  idempotency:
    name: idempotency
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: OperationIdempotency
    required: true
  reconciliation:
    name: reconciliation
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: OperationReconciliation
    required: true
  inputSchemaRef:
    name: inputSchemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$
  outputSchemaRef:
    name: outputSchemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$
  secretBindingRefs:
    name: secretBindingRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  recoveryPlanDigest:
    name: recoveryPlanDigest
    description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
      (ADR-0056 decision 3).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  killSwitchRef:
    name: killSwitchRef
    description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
      (ADR-0056 decision 4).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$

```
</details>

### Induced

<details>
```yaml
name: McpBundleOperation
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
    owner: McpBundleOperation
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
  exposedName:
    name: exposedName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    - PlannedOperation
    range: string
    required: true
    pattern: ^.{3,}$
  upstreamToolName:
    name: upstreamToolName
    description: The raw MCP tool this semantic operation wraps. Never leaves this
      document -- there is no generic connector.invoke (ADR-0019, decision 161).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - UpstreamToolEntry
    - McpBundleOperation
    - PlannedOperation
    range: string
    required: true
    pattern: ^.{1,}$
  untrustedOutput:
    name: untrustedOutput
    description: Whether this operation returns content originating outside the trust
      boundary.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: boolean
    required: true
  agentGuidance:
    name: agentGuidance
    description: When to reach for this operation and when not to, written for the
      choosing agent.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^.{10,}$
  capabilityRef:
    name: capabilityRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ImprovementTarget
    - AttentionDecisionOption
    - ProcessStep
    - ConnectorOperation
    - McpBundleOperation
    - SurfaceWritePath
    range: CapabilityName
    required: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - PlannedOperation
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string
    required: true
    pattern: ^.{10,}$
  effect:
    name: effect
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - PolicyRule
    - McpBundleOperation
    range: OperationEffect
    required: true
  idempotency:
    name: idempotency
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: OperationIdempotency
    required: true
  reconciliation:
    name: reconciliation
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: OperationReconciliation
    required: true
  inputSchemaRef:
    name: inputSchemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$
  outputSchemaRef:
    name: outputSchemaRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$
  secretBindingRefs:
    name: secretBindingRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleOperation
    domain_of:
    - ConnectorOperation
    - McpBundleOperation
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  recoveryPlanDigest:
    name: recoveryPlanDigest
    description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
      (ADR-0056 decision 3).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^sha256:[0-9a-f]{64}$
  killSwitchRef:
    name: killSwitchRef
    description: Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED
      (ADR-0056 decision 4).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleOperation
    domain_of:
    - McpBundleOperation
    range: string
    pattern: ^.{3,}$

```
</details></div>