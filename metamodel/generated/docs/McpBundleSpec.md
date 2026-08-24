---
search:
  boost: 10.0
---

# Class: McpBundleSpec

<div data-search-exclude markdown="1">



URI: [jumo:McpBundleSpec](https://jumo.dev/schemas/jumo-v1/McpBundleSpec)





```mermaid
 classDiagram
    class McpBundleSpec
    click McpBundleSpec href "../McpBundleSpec/"
      McpBundleSpec : artifact





        McpBundleSpec --> "1" McpBundleArtifact : artifact
        click McpBundleArtifact href "../McpBundleArtifact/"



      McpBundleSpec : connectorPackageRef





        McpBundleSpec --> "0..1" ContractReference : connectorPackageRef
        click ContractReference href "../ContractReference/"



      McpBundleSpec : lifecycle





        McpBundleSpec --> "1" McpBundleLifecycle : lifecycle
        click McpBundleLifecycle href "../McpBundleLifecycle/"



      McpBundleSpec : ownerRealm

      McpBundleSpec : runtime





        McpBundleSpec --> "1" McpBundleRuntime : runtime
        click McpBundleRuntime href "../McpBundleRuntime/"



      McpBundleSpec : semanticProfile





        McpBundleSpec --> "1" McpBundleSemanticProfile : semanticProfile
        click McpBundleSemanticProfile href "../McpBundleSemanticProfile/"



      McpBundleSpec : trustClass





        McpBundleSpec --> "1" McpBundleTrustClass : trustClass
        click McpBundleTrustClass href "../McpBundleTrustClass/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [McpBundleLifecycle](McpBundleLifecycle.md) |  | direct |
| [trustClass](trustClass.md) | 1 <br/> [McpBundleTrustClass](McpBundleTrustClass.md) |  | direct |
| [connectorPackageRef](connectorPackageRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [artifact](artifact.md) | 1 <br/> [McpBundleArtifact](McpBundleArtifact.md) |  | direct |
| [runtime](runtime.md) | 1 <br/> [McpBundleRuntime](McpBundleRuntime.md) |  | direct |
| [semanticProfile](semanticProfile.md) | 1 <br/> [McpBundleSemanticProfile](McpBundleSemanticProfile.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpBundle](McpBundle.md) | [spec](spec.md) | range | [McpBundleSpec](McpBundleSpec.md) |












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
| self | jumo:McpBundleSpec |
| native | jumo:McpBundleSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpBundleSpec
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
    owner: McpBundleSpec
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
    owner: McpBundleSpec
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
    range: McpBundleLifecycle
    required: true
  trustClass:
    name: trustClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleTrustClass
    required: true
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    inlined: true
  artifact:
    name: artifact
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleArtifact
    required: true
    inlined: true
  runtime:
    name: runtime
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSpec
    domain_of:
    - ProjectSpec
    - McpBundleSpec
    range: McpBundleRuntime
    required: true
    inlined: true
  semanticProfile:
    name: semanticProfile
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleSemanticProfile
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: McpBundleSpec
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
    owner: McpBundleSpec
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
    owner: McpBundleSpec
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
    range: McpBundleLifecycle
    required: true
  trustClass:
    name: trustClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleTrustClass
    required: true
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    inlined: true
  artifact:
    name: artifact
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleArtifact
    required: true
    inlined: true
  runtime:
    name: runtime
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSpec
    domain_of:
    - ProjectSpec
    - McpBundleSpec
    range: McpBundleRuntime
    required: true
    inlined: true
  semanticProfile:
    name: semanticProfile
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleSpec
    domain_of:
    - McpBundleSpec
    range: McpBundleSemanticProfile
    required: true
    inlined: true

```
</details></div>