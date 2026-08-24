---
search:
  boost: 10.0
---

# Class: McpRegistrySourceBindingSpec

<div data-search-exclude markdown="1">



URI: [jumo:McpRegistrySourceBindingSpec](https://jumo.dev/schemas/jumo-v1/McpRegistrySourceBindingSpec)





```mermaid
 classDiagram
    class McpRegistrySourceBindingSpec
    click McpRegistrySourceBindingSpec href "../McpRegistrySourceBindingSpec/"
      McpRegistrySourceBindingSpec : executionMachineRef





        McpRegistrySourceBindingSpec --> "1" ContractReference : executionMachineRef
        click ContractReference href "../ContractReference/"



      McpRegistrySourceBindingSpec : lifecycle





        McpRegistrySourceBindingSpec --> "1" McpRegistrySourceLifecycle : lifecycle
        click McpRegistrySourceLifecycle href "../McpRegistrySourceLifecycle/"



      McpRegistrySourceBindingSpec : mcpRegistrySourceRef





        McpRegistrySourceBindingSpec --> "1" ContractReference : mcpRegistrySourceRef
        click ContractReference href "../ContractReference/"



      McpRegistrySourceBindingSpec : ownerRealm

      McpRegistrySourceBindingSpec : roleDefinitionRef





        McpRegistrySourceBindingSpec --> "1" ContractReference : roleDefinitionRef
        click ContractReference href "../ContractReference/"



      McpRegistrySourceBindingSpec : workOrderRef





        McpRegistrySourceBindingSpec --> "1" ContractReference : workOrderRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [mcpRegistrySourceRef](mcpRegistrySourceRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [executionMachineRef](executionMachineRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [McpRegistrySourceLifecycle](McpRegistrySourceLifecycle.md) |  | direct |
| [workOrderRef](workOrderRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [roleDefinitionRef](roleDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpRegistrySourceBinding](McpRegistrySourceBinding.md) | [spec](spec.md) | range | [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |












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
| self | jumo:McpRegistrySourceBindingSpec |
| native | jumo:McpRegistrySourceBindingSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpRegistrySourceBindingSpec
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
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
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
  mcpRegistrySourceRef:
    name: mcpRegistrySourceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true
  executionMachineRef:
    name: executionMachineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceBindingSpec
    - ProviderSessionBinding
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    range: ContractReference
    required: true
    inlined: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - ProjectSpec
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpRegistrySyncStatus
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - SecretBindingSpec
    - WorkerSubstrateSpec
    range: McpRegistrySourceLifecycle
    required: true
  workOrderRef:
    name: workOrderRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpInventorySnapshot
    range: ContractReference
    required: true
    inlined: true
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: McpRegistrySourceBindingSpec
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
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
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
  mcpRegistrySourceRef:
    name: mcpRegistrySourceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true
  executionMachineRef:
    name: executionMachineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceBindingSpec
    - ProviderSessionBinding
    - WorkerSubstrateSpec
    - McpInventorySnapshot
    range: ContractReference
    required: true
    inlined: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - ProjectSpec
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpRegistrySyncStatus
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - SecretBindingSpec
    - WorkerSubstrateSpec
    range: McpRegistrySourceLifecycle
    required: true
  workOrderRef:
    name: workOrderRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpInventorySnapshot
    range: ContractReference
    required: true
    inlined: true
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySourceBindingSpec
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true

```
</details></div>