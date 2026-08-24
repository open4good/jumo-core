---
search:
  boost: 5.0
---

# Slot: ownerRealm

<div data-search-exclude markdown="1">



URI: [jumo:ownerRealm](https://jumo.dev/schemas/jumo-v1/ownerRealm)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [PrincipalSpec](PrincipalSpec.md) |  |  no  |
| [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |  |  no  |
| [ProjectSpec](ProjectSpec.md) |  |  no  |
| [KitBindingSpec](KitBindingSpec.md) |  |  no  |
| [KitLockSpec](KitLockSpec.md) |  |  no  |
| [RoleDefinitionSpec](RoleDefinitionSpec.md) |  |  no  |
| [RoleAssignmentSpec](RoleAssignmentSpec.md) |  |  no  |
| [TeamSpecBody](TeamSpecBody.md) |  |  no  |
| [CoordinationProfileSpec](CoordinationProfileSpec.md) |  |  no  |
| [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |  |  no  |
| [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |  |  no  |
| [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |  |  no  |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |  no  |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) |  |  no  |
| [PersonalSpaceSpec](PersonalSpaceSpec.md) |  |  no  |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |  no  |
| [RealmPublicationSpec](RealmPublicationSpec.md) |  |  no  |
| [CapabilityProfileSpec](CapabilityProfileSpec.md) |  |  no  |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |  no  |
| [GoldenTaskSetSpec](GoldenTaskSetSpec.md) |  |  no  |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |  no  |
| [ControlCatalogSpec](ControlCatalogSpec.md) |  |  no  |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |  no  |
| [EvidenceProfileSpec](EvidenceProfileSpec.md) |  |  no  |
| [ProcessSpecBody](ProcessSpecBody.md) |  |  no  |
| [ChangeProposalRef](ChangeProposalRef.md) | Narrow hash-bound reference; it never contains a document body or secret |  no  |
| [ForgeProjectionRef](ForgeProjectionRef.md) |  |  no  |
| [ProcessRunRef](ProcessRunRef.md) |  |  no  |
| [ApprovalSignal](ApprovalSignal.md) | Minimal user/message signal envelope; no approval decision is inferred from i... |  no  |
| [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) | Narrow hash-bound reference to one hosted-execution-cell provisioning run |  no  |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |  no  |
| [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) | Specification for a MachineHostDefinition contract |  no  |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |  no  |
| [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |  |  no  |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |  no  |
| [McpBundleSpec](McpBundleSpec.md) |  |  no  |
| [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |  |  no  |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |  no  |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |  no  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |  no  |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |  no  |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |  no  |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |  no  |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |  no  |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |  no  |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |  no  |
| [FederationProfileSpec](FederationProfileSpec.md) |  |  no  |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |  no  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |  no  |
| [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) | Specification for a ConnectorIntegration contract |  no  |
| [OAuthClientBindingSpec](OAuthClientBindingSpec.md) | Specification for an OAuthClientBinding contract |  no  |
| [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) |  |  no  |
| [VocabularySetSpec](VocabularySetSpec.md) |  |  no  |
| [ProjectionSpecBody](ProjectionSpecBody.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [PrincipalSpec](PrincipalSpec.md), [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md), [ProjectSpec](ProjectSpec.md), [KitBindingSpec](KitBindingSpec.md), [KitLockSpec](KitLockSpec.md), [RoleDefinitionSpec](RoleDefinitionSpec.md), [RoleAssignmentSpec](RoleAssignmentSpec.md), [TeamSpecBody](TeamSpecBody.md), [CoordinationProfileSpec](CoordinationProfileSpec.md), [RoutingEligibilitySpec](RoutingEligibilitySpec.md), [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md), [OrganizationTemplateSpec](OrganizationTemplateSpec.md), [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md), [AdvisorProfileSpec](AdvisorProfileSpec.md), [PersonalSpaceSpec](PersonalSpaceSpec.md), [OrganizationSpecBody](OrganizationSpecBody.md), [RealmPublicationSpec](RealmPublicationSpec.md), [CapabilityProfileSpec](CapabilityProfileSpec.md), [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md), [GoldenTaskSetSpec](GoldenTaskSetSpec.md), [ImprovementLoopSpec](ImprovementLoopSpec.md), [ControlCatalogSpec](ControlCatalogSpec.md), [ComplianceProfileSpec](ComplianceProfileSpec.md), [EvidenceProfileSpec](EvidenceProfileSpec.md), [ProcessSpecBody](ProcessSpecBody.md), [ChangeProposalRef](ChangeProposalRef.md), [ForgeProjectionRef](ForgeProjectionRef.md), [ProcessRunRef](ProcessRunRef.md), [ApprovalSignal](ApprovalSignal.md), [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md), [ExecutionMachineSpec](ExecutionMachineSpec.md), [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md), [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md), [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md), [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md), [McpBundleSpec](McpBundleSpec.md), [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md), [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md), [ExecutionCellSpec](ExecutionCellSpec.md), [ProviderSessionBinding](ProviderSessionBinding.md), [RoutingDecision](RoutingDecision.md), [WorkerInvocation](WorkerInvocation.md), [EvidenceRecord](EvidenceRecord.md), [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md), [SecretBindingSpec](SecretBindingSpec.md), [FederatedPeerSpec](FederatedPeerSpec.md), [FederationProfileSpec](FederationProfileSpec.md), [WorkerSubstrateSpec](WorkerSubstrateSpec.md), [McpInventorySnapshot](McpInventorySnapshot.md), [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md), [OAuthClientBindingSpec](OAuthClientBindingSpec.md), [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md), [VocabularySetSpec](VocabularySetSpec.md), [ProjectionSpecBody](ProjectionSpecBody.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ownerRealm |
| native | jumo:ownerRealm |




## LinkML Source

<details>
```yaml
name: ownerRealm
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
range: string

```
</details></div>