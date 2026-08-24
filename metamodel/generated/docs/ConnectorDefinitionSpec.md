---
search:
  boost: 10.0
---

# Class: ConnectorDefinitionSpec

<div data-search-exclude markdown="1">



URI: [jumo:ConnectorDefinitionSpec](https://jumo.dev/schemas/jumo-v1/ConnectorDefinitionSpec)





```mermaid
 classDiagram
    class ConnectorDefinitionSpec
    click ConnectorDefinitionSpec href "../ConnectorDefinitionSpec/"
      ConnectorDefinitionSpec : configurationRef

      ConnectorDefinitionSpec : connectorPackageRef





        ConnectorDefinitionSpec --> "0..1" ContractReference : connectorPackageRef
        click ContractReference href "../ContractReference/"



      ConnectorDefinitionSpec : lifecycle





        ConnectorDefinitionSpec --> "1" ConnectorLifecycle : lifecycle
        click ConnectorLifecycle href "../ConnectorLifecycle/"



      ConnectorDefinitionSpec : mcpBundleRef





        ConnectorDefinitionSpec --> "0..1" ContractReference : mcpBundleRef
        click ContractReference href "../ContractReference/"



      ConnectorDefinitionSpec : operations





        ConnectorDefinitionSpec --> "1..*" ConnectorOperation : operations
        click ConnectorOperation href "../ConnectorOperation/"



      ConnectorDefinitionSpec : ownerRealm

      ConnectorDefinitionSpec : placement





        ConnectorDefinitionSpec --> "0..1" ConnectorPlacement : placement
        click ConnectorPlacement href "../ConnectorPlacement/"



      ConnectorDefinitionSpec : remoteMcpServiceRef





        ConnectorDefinitionSpec --> "0..1" ContractReference : remoteMcpServiceRef
        click ContractReference href "../ContractReference/"



      ConnectorDefinitionSpec : transport





        ConnectorDefinitionSpec --> "1" ConnectorTransport : transport
        click ConnectorTransport href "../ConnectorTransport/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [ConnectorLifecycle](ConnectorLifecycle.md) |  | direct |
| [transport](transport.md) | 1 <br/> [ConnectorTransport](ConnectorTransport.md) |  | direct |
| [configurationRef](configurationRef.md) | 1 <br/> [ConfigurationRef](ConfigurationRef.md) |  | direct |
| [mcpBundleRef](mcpBundleRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [remoteMcpServiceRef](remoteMcpServiceRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [connectorPackageRef](connectorPackageRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [placement](placement.md) | 0..1 <br/> [ConnectorPlacement](ConnectorPlacement.md) |  | direct |
| [operations](operations.md) | 1..* <br/> [ConnectorOperation](ConnectorOperation.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ConnectorDefinition](ConnectorDefinition.md) | [spec](spec.md) | range | [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |












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
| self | jumo:ConnectorDefinitionSpec |
| native | jumo:ConnectorDefinitionSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorDefinitionSpec
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
    owner: ConnectorDefinitionSpec
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
    owner: ConnectorDefinitionSpec
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
    range: ConnectorLifecycle
    required: true
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: ConnectorTransport
    required: true
  configurationRef:
    name: configurationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    range: ConfigurationRef
    required: true
  mcpBundleRef:
    name: mcpBundleRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - ConnectorAppraisalSpec
    range: ContractReference
    inlined: true
  remoteMcpServiceRef:
    name: remoteMcpServiceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    inlined: true
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    inlined: true
  placement:
    name: placement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - ExecutionCellSpec
    range: ConnectorPlacement
  operations:
    name: operations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSemanticProfile
    - ApiSurfaceSpec
    range: ConnectorOperation
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: ConnectorDefinitionSpec
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
    owner: ConnectorDefinitionSpec
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
    owner: ConnectorDefinitionSpec
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
    range: ConnectorLifecycle
    required: true
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: ConnectorTransport
    required: true
  configurationRef:
    name: configurationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    range: ConfigurationRef
    required: true
  mcpBundleRef:
    name: mcpBundleRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - ConnectorAppraisalSpec
    range: ContractReference
    inlined: true
  remoteMcpServiceRef:
    name: remoteMcpServiceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    inlined: true
  connectorPackageRef:
    name: connectorPackageRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - ConnectorPackageCertificationSpec
    range: ContractReference
    inlined: true
  placement:
    name: placement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - ExecutionCellSpec
    range: ConnectorPlacement
  operations:
    name: operations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorDefinitionSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSemanticProfile
    - ApiSurfaceSpec
    range: ConnectorOperation
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>