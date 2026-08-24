---
search:
  boost: 10.0
---

# Class: SecretBindingSpec


_anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allowedWorkerSubstrateRefs) moves to Rego._



<div data-search-exclude markdown="1">



URI: [jumo:SecretBindingSpec](https://jumo.dev/schemas/jumo-v1/SecretBindingSpec)





```mermaid
 classDiagram
    class SecretBindingSpec
    click SecretBindingSpec href "../SecretBindingSpec/"
      SecretBindingSpec : allowedConnectorDefinitionRefs





        SecretBindingSpec --> "*" ContractReference : allowedConnectorDefinitionRefs
        click ContractReference href "../ContractReference/"



      SecretBindingSpec : allowedMcpBundleRefs





        SecretBindingSpec --> "*" ContractReference : allowedMcpBundleRefs
        click ContractReference href "../ContractReference/"



      SecretBindingSpec : allowedOperationRefs

      SecretBindingSpec : allowedRemoteMcpServiceRefs





        SecretBindingSpec --> "*" ContractReference : allowedRemoteMcpServiceRefs
        click ContractReference href "../ContractReference/"



      SecretBindingSpec : allowedWorkerSubstrateRefs





        SecretBindingSpec --> "*" ContractReference : allowedWorkerSubstrateRefs
        click ContractReference href "../ContractReference/"



      SecretBindingSpec : injection





        SecretBindingSpec --> "1" SecretInjection : injection
        click SecretInjection href "../SecretInjection/"



      SecretBindingSpec : lifecycle





        SecretBindingSpec --> "1" SecretBindingLifecycle : lifecycle
        click SecretBindingLifecycle href "../SecretBindingLifecycle/"



      SecretBindingSpec : ownerRealm

      SecretBindingSpec : rotation





        SecretBindingSpec --> "0..1" SecretRotation : rotation
        click SecretRotation href "../SecretRotation/"



      SecretBindingSpec : runtimeRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [SecretBindingLifecycle](SecretBindingLifecycle.md) |  | direct |
| [runtimeRef](runtimeRef.md) | 1 <br/> [OpenBaoRuntimeRef](OpenBaoRuntimeRef.md) | Account- or connector-scoped OpenBao KV-v2 reference resolved by the per-Real... | direct |
| [allowedMcpBundleRefs](allowedMcpBundleRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |
| [allowedRemoteMcpServiceRefs](allowedRemoteMcpServiceRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |
| [allowedConnectorDefinitionRefs](allowedConnectorDefinitionRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |
| [allowedOperationRefs](allowedOperationRefs.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [allowedWorkerSubstrateRefs](allowedWorkerSubstrateRefs.md) | * <br/> [ContractReference](ContractReference.md) |  | direct |
| [injection](injection.md) | 1 <br/> [SecretInjection](SecretInjection.md) |  | direct |
| [rotation](rotation.md) | 0..1 <br/> [SecretRotation](SecretRotation.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SecretBinding](SecretBinding.md) | [spec](spec.md) | range | [SecretBindingSpec](SecretBindingSpec.md) |












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
| self | jumo:SecretBindingSpec |
| native | jumo:SecretBindingSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SecretBindingSpec
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
description: anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs,
  allowedWorkerSubstrateRefs) moves to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
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
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
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
    range: SecretBindingLifecycle
    required: true
  runtimeRef:
    name: runtimeRef
    description: Account- or connector-scoped OpenBao KV-v2 reference resolved by
      the per-Realm SecretBroker; not a secret value.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
    domain_of:
    - MachineRuntimeInstallation
    - SecretBindingSpec
    range: OpenBaoRuntimeRef
    required: true
  allowedMcpBundleRefs:
    name: allowedMcpBundleRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedRemoteMcpServiceRefs:
    name: allowedRemoteMcpServiceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedConnectorDefinitionRefs:
    name: allowedConnectorDefinitionRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedOperationRefs:
    name: allowedOperationRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: Identifier
    multivalued: true
  allowedWorkerSubstrateRefs:
    name: allowedWorkerSubstrateRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  injection:
    name: injection
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: SecretInjection
    required: true
    inlined: true
  rotation:
    name: rotation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: SecretRotation
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: SecretBindingSpec
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
description: anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs,
  allowedWorkerSubstrateRefs) moves to Rego.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
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
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
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
    range: SecretBindingLifecycle
    required: true
  runtimeRef:
    name: runtimeRef
    description: Account- or connector-scoped OpenBao KV-v2 reference resolved by
      the per-Realm SecretBroker; not a secret value.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SecretBindingSpec
    domain_of:
    - MachineRuntimeInstallation
    - SecretBindingSpec
    range: OpenBaoRuntimeRef
    required: true
  allowedMcpBundleRefs:
    name: allowedMcpBundleRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedRemoteMcpServiceRefs:
    name: allowedRemoteMcpServiceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedConnectorDefinitionRefs:
    name: allowedConnectorDefinitionRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  allowedOperationRefs:
    name: allowedOperationRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: Identifier
    multivalued: true
  allowedWorkerSubstrateRefs:
    name: allowedWorkerSubstrateRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true
  injection:
    name: injection
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: SecretInjection
    required: true
    inlined: true
  rotation:
    name: rotation
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SecretBindingSpec
    domain_of:
    - SecretBindingSpec
    range: SecretRotation
    inlined: true

```
</details></div>