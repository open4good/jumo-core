---
search:
  boost: 10.0
---

# Class: ProviderSessionBinding


_Recognized opaque binding between a holder provider session and one ExecutionMachine. It never contains a bearer token, refresh token, or provider credential._



<div data-search-exclude markdown="1">



URI: [jumo:ProviderSessionBinding](https://jumo.dev/schemas/jumo-v1/ProviderSessionBinding)





```mermaid
 classDiagram
    class ProviderSessionBinding
    click ProviderSessionBinding href "../ProviderSessionBinding/"
      ProviderSessionBinding : adapter





        ProviderSessionBinding --> "1" ModelAccessAdapter : adapter
        click ModelAccessAdapter href "../ModelAccessAdapter/"



      ProviderSessionBinding : executionMachineRef

      ProviderSessionBinding : expiresAt

      ProviderSessionBinding : id

      ProviderSessionBinding : ownerRealm

      ProviderSessionBinding : providerAccountRef

      ProviderSessionBinding : sessionFingerprint

      ProviderSessionBinding : status


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [executionMachineRef](executionMachineRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [adapter](adapter.md) | 1 <br/> [ModelAccessAdapter](ModelAccessAdapter.md) |  | direct |
| [providerAccountRef](providerAccountRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [sessionFingerprint](sessionFingerprint.md) | 1 <br/> [String](String.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |















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
| self | jumo:ProviderSessionBinding |
| native | jumo:ProviderSessionBinding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProviderSessionBinding
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
description: Recognized opaque binding between a holder provider session and one ExecutionMachine.
  It never contains a bearer token, refresh token, or provider credential.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
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
    owner: ProviderSessionBinding
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
  executionMachineRef:
    name: executionMachineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - McpRegistrySourceBindingSpec
    - ProviderSessionBinding
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    range: Identifier
    required: true
  adapter:
    name: adapter
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - McpRegistrySourceSpec
    - ProviderSessionBinding
    - RoutingDecision
    range: ModelAccessAdapter
    required: true
  providerAccountRef:
    name: providerAccountRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderSessionBinding
    domain_of:
    - ProviderSessionBinding
    - WorkerModelAccess
    range: Identifier
    required: true
  sessionFingerprint:
    name: sessionFingerprint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderSessionBinding
    domain_of:
    - ProviderSessionBinding
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: datetime
    required: true

```
</details>

### Induced

<details>
```yaml
name: ProviderSessionBinding
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
description: Recognized opaque binding between a holder provider session and one ExecutionMachine.
  It never contains a bearer token, refresh token, or provider credential.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
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
    owner: ProviderSessionBinding
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
  executionMachineRef:
    name: executionMachineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - McpRegistrySourceBindingSpec
    - ProviderSessionBinding
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    range: Identifier
    required: true
  adapter:
    name: adapter
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - McpRegistrySourceSpec
    - ProviderSessionBinding
    - RoutingDecision
    range: ModelAccessAdapter
    required: true
  providerAccountRef:
    name: providerAccountRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderSessionBinding
    domain_of:
    - ProviderSessionBinding
    - WorkerModelAccess
    range: Identifier
    required: true
  sessionFingerprint:
    name: sessionFingerprint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderSessionBinding
    domain_of:
    - ProviderSessionBinding
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderSessionBinding
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: datetime
    required: true

```
</details></div>