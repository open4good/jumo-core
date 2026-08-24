---
search:
  boost: 10.0
---

# Class: RemoteMcpServiceSpec

<div data-search-exclude markdown="1">



URI: [jumo:RemoteMcpServiceSpec](https://jumo.dev/schemas/jumo-v1/RemoteMcpServiceSpec)





```mermaid
 classDiagram
    class RemoteMcpServiceSpec
    click RemoteMcpServiceSpec href "../RemoteMcpServiceSpec/"
      RemoteMcpServiceSpec : endpointConfigurationRef

      RemoteMcpServiceSpec : lifecycle





        RemoteMcpServiceSpec --> "1" ConnectorLifecycle : lifecycle
        click ConnectorLifecycle href "../ConnectorLifecycle/"



      RemoteMcpServiceSpec : oauthSecretBindingRef





        RemoteMcpServiceSpec --> "1" ContractReference : oauthSecretBindingRef
        click ContractReference href "../ContractReference/"



      RemoteMcpServiceSpec : ownerRealm

      RemoteMcpServiceSpec : remoteMcpAppraisalRef





        RemoteMcpServiceSpec --> "0..1" ContractReference : remoteMcpAppraisalRef
        click ContractReference href "../ContractReference/"



      RemoteMcpServiceSpec : transport


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [ConnectorLifecycle](ConnectorLifecycle.md) |  | direct |
| [transport](transport.md) | 1 <br/> [String](String.md) |  | direct |
| [endpointConfigurationRef](endpointConfigurationRef.md) | 1 <br/> [ConfigurationRef](ConfigurationRef.md) |  | direct |
| [oauthSecretBindingRef](oauthSecretBindingRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [remoteMcpAppraisalRef](remoteMcpAppraisalRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RemoteMcpService](RemoteMcpService.md) | [spec](spec.md) | range | [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |












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
| self | jumo:RemoteMcpServiceSpec |
| native | jumo:RemoteMcpServiceSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: string
    required: true
    equals_string: MCP_STREAMABLE_HTTP
  endpointConfigurationRef:
    name: endpointConfigurationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ConfigurationRef
    required: true
  oauthSecretBindingRef:
    name: oauthSecretBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ContractReference
    required: true
    inlined: true
  remoteMcpAppraisalRef:
    name: remoteMcpAppraisalRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ContractReference
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
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
    owner: RemoteMcpServiceSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: string
    required: true
    equals_string: MCP_STREAMABLE_HTTP
  endpointConfigurationRef:
    name: endpointConfigurationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ConfigurationRef
    required: true
  oauthSecretBindingRef:
    name: oauthSecretBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ContractReference
    required: true
    inlined: true
  remoteMcpAppraisalRef:
    name: remoteMcpAppraisalRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpServiceSpec
    domain_of:
    - RemoteMcpServiceSpec
    range: ContractReference
    inlined: true

```
</details></div>