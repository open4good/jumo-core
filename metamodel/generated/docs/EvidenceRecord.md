---
search:
  boost: 10.0
---

# Class: EvidenceRecord


_Append-only sanitized execution observation linked to one WorkerInvocation._



<div data-search-exclude markdown="1">



URI: [jumo:EvidenceRecord](https://jumo.dev/schemas/jumo-v1/EvidenceRecord)





```mermaid
 classDiagram
    class EvidenceRecord
    click EvidenceRecord href "../EvidenceRecord/"
      EvidenceRecord : capturedAt

      EvidenceRecord : contentSanitized

      EvidenceRecord : eventKind

      EvidenceRecord : eventSha256

      EvidenceRecord : id

      EvidenceRecord : ownerRealm

      EvidenceRecord : workerInvocationRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [workerInvocationRef](workerInvocationRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [eventKind](eventKind.md) | 1 <br/> [String](String.md) |  | direct |
| [eventSha256](eventSha256.md) | 1 <br/> [String](String.md) |  | direct |
| [contentSanitized](contentSanitized.md) | 1 <br/> [Boolean](Boolean.md) |  | direct |
| [capturedAt](capturedAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |















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
| self | jumo:EvidenceRecord |
| native | jumo:EvidenceRecord |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EvidenceRecord
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
description: Append-only sanitized execution observation linked to one WorkerInvocation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
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
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
    domain_of:
    - PrincipalSpec
    - PrincipalIdentityBindingSpec
    - ProjectSpec
    - KitBindingSpec
    - KitLockSpec
    - RoleDefinitionSpec
    - RoleAssignmentSpec
    - TeamSpecBody
    - CoordinationProfileSpec
    - RoutingEligibilitySpec
    - RoleLifecyclePolicySpec
    - OrganizationTemplateSpec
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - PersonalSpaceSpec
    - OrganizationSpecBody
    - RealmPublicationSpec
    - CapabilityProfileSpec
    - WorkerRequirementProfileSpec
    - GoldenTaskSetSpec
    - ImprovementLoopSpec
    - ControlCatalogSpec
    - ComplianceProfileSpec
    - EvidenceProfileSpec
    - ProcessSpecBody
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ExecutionMachineSpec
    - MachineHostDefinitionSpec
    - McpRegistrySourceBindingSpec
    - ConnectorDefinitionSpec
    - ConnectorAppraisalSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - RemoteMcpAppraisalSpec
    - ExecutionCellSpec
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - InvocationAuthorizationReceipt
    - SecretBindingSpec
    - FederatedPeerSpec
    - FederationProfileSpec
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    - ConnectorIntegrationSpec
    - OAuthClientBindingSpec
    - InterfaceSurfaceSpec
    - VocabularySetSpec
    - ProjectionSpecBody
    range: Identifier
    required: true
  workerInvocationRef:
    name: workerInvocationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: Identifier
    required: true
  eventKind:
    name: eventKind
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: string
    required: true
  eventSha256:
    name: eventSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  contentSanitized:
    name: contentSanitized
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: boolean
    required: true
  capturedAt:
    name: capturedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
    domain_of:
    - CliUsageObservation
    - ProviderQuotaObservation
    - EvidenceRecord
    range: datetime
    required: true

```
</details>

### Induced

<details>
```yaml
name: EvidenceRecord
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
description: Append-only sanitized execution observation linked to one WorkerInvocation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
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
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
    domain_of:
    - PrincipalSpec
    - PrincipalIdentityBindingSpec
    - ProjectSpec
    - KitBindingSpec
    - KitLockSpec
    - RoleDefinitionSpec
    - RoleAssignmentSpec
    - TeamSpecBody
    - CoordinationProfileSpec
    - RoutingEligibilitySpec
    - RoleLifecyclePolicySpec
    - OrganizationTemplateSpec
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - PersonalSpaceSpec
    - OrganizationSpecBody
    - RealmPublicationSpec
    - CapabilityProfileSpec
    - WorkerRequirementProfileSpec
    - GoldenTaskSetSpec
    - ImprovementLoopSpec
    - ControlCatalogSpec
    - ComplianceProfileSpec
    - EvidenceProfileSpec
    - ProcessSpecBody
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ExecutionMachineSpec
    - MachineHostDefinitionSpec
    - McpRegistrySourceBindingSpec
    - ConnectorDefinitionSpec
    - ConnectorAppraisalSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - RemoteMcpAppraisalSpec
    - ExecutionCellSpec
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - InvocationAuthorizationReceipt
    - SecretBindingSpec
    - FederatedPeerSpec
    - FederationProfileSpec
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    - ConnectorIntegrationSpec
    - OAuthClientBindingSpec
    - InterfaceSurfaceSpec
    - VocabularySetSpec
    - ProjectionSpecBody
    range: Identifier
    required: true
  workerInvocationRef:
    name: workerInvocationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: Identifier
    required: true
  eventKind:
    name: eventKind
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: string
    required: true
  eventSha256:
    name: eventSha256
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  contentSanitized:
    name: contentSanitized
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceRecord
    domain_of:
    - EvidenceRecord
    range: boolean
    required: true
  capturedAt:
    name: capturedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceRecord
    domain_of:
    - CliUsageObservation
    - ProviderQuotaObservation
    - EvidenceRecord
    range: datetime
    required: true

```
</details></div>