---
search:
  boost: 5.0
---

# Slot: id

<div data-search-exclude markdown="1">



URI: [jumo:id](https://jumo.dev/schemas/jumo-v1/id)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [ContractReference](ContractReference.md) | Structured reference to a Git-declared contract document |  no  |
| [Metadata](Metadata.md) | Shared identity block for every contract document |  no  |
| [LayerOverride](LayerOverride.md) | Explicit declaration of an overridden document from a lower layer or imported... |  no  |
| [Principle](Principle.md) |  |  no  |
| [Milestone](Milestone.md) |  |  no  |
| [RepositoryBinding](RepositoryBinding.md) |  |  no  |
| [KitProfile](KitProfile.md) |  |  no  |
| [KitModule](KitModule.md) |  |  no  |
| [DispositionRule](DispositionRule.md) |  |  no  |
| [SelfDescriptionSubject](SelfDescriptionSubject.md) |  |  no  |
| [AgentCardSkill](AgentCardSkill.md) |  |  no  |
| [AcceptanceCriterion](AcceptanceCriterion.md) |  |  no  |
| [EngagementStage](EngagementStage.md) |  |  no  |
| [GoldenTaskCase](GoldenTaskCase.md) |  |  no  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |  no  |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |  no  |
| [AttentionDecisionOption](AttentionDecisionOption.md) |  |  no  |
| [ProcessStep](ProcessStep.md) | One node in the process graph |  no  |
| [ProcessFlow](ProcessFlow.md) |  |  no  |
| [ChangeProposalRef](ChangeProposalRef.md) | Narrow hash-bound reference; it never contains a document body or secret |  no  |
| [ForgeProjectionRef](ForgeProjectionRef.md) |  |  no  |
| [ProcessRunRef](ProcessRunRef.md) |  |  no  |
| [ApprovalSignal](ApprovalSignal.md) | Minimal user/message signal envelope; no approval decision is inferred from i... |  no  |
| [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) | Narrow hash-bound reference to one hosted-execution-cell provisioning run |  no  |
| [ConnectorOperation](ConnectorOperation.md) |  |  no  |
| [McpBundleOperation](McpBundleOperation.md) |  |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |  no  |
| [ProjectionSection](ProjectionSection.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [ContractReference](ContractReference.md), [Metadata](Metadata.md), [LayerOverride](LayerOverride.md), [Principle](Principle.md), [Milestone](Milestone.md), [RepositoryBinding](RepositoryBinding.md), [KitProfile](KitProfile.md), [KitModule](KitModule.md), [DispositionRule](DispositionRule.md), [SelfDescriptionSubject](SelfDescriptionSubject.md), [AgentCardSkill](AgentCardSkill.md), [AcceptanceCriterion](AcceptanceCriterion.md), [EngagementStage](EngagementStage.md), [GoldenTaskCase](GoldenTaskCase.md), [AssistedJourneyStep](AssistedJourneyStep.md), [PolicyRule](PolicyRule.md), [AttentionDecisionOption](AttentionDecisionOption.md), [ProcessStep](ProcessStep.md), [ProcessFlow](ProcessFlow.md), [ChangeProposalRef](ChangeProposalRef.md), [ForgeProjectionRef](ForgeProjectionRef.md), [ProcessRunRef](ProcessRunRef.md), [ApprovalSignal](ApprovalSignal.md), [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md), [ConnectorOperation](ConnectorOperation.md), [McpBundleOperation](McpBundleOperation.md), [ProviderSessionBinding](ProviderSessionBinding.md), [RoutingDecision](RoutingDecision.md), [WorkerInvocation](WorkerInvocation.md), [EvidenceRecord](EvidenceRecord.md), [Surface](Surface.md), [ProjectionSection](ProjectionSection.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:id |
| native | jumo:id |




## LinkML Source

<details>
```yaml
name: id
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

```
</details></div>