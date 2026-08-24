---
search:
  boost: 10.0
---

# Class: FederatedPeerSpec

<div data-search-exclude markdown="1">



URI: [jumo:FederatedPeerSpec](https://jumo.dev/schemas/jumo-v1/FederatedPeerSpec)





```mermaid
 classDiagram
    class FederatedPeerSpec
    click FederatedPeerSpec href "../FederatedPeerSpec/"
      FederatedPeerSpec : endpoint

      FederatedPeerSpec : federationProfileRefs





        FederatedPeerSpec --> "1..*" ContractReference : federationProfileRefs
        click ContractReference href "../ContractReference/"



      FederatedPeerSpec : mtls





        FederatedPeerSpec --> "1" FederatedPeerMtls : mtls
        click FederatedPeerMtls href "../FederatedPeerMtls/"



      FederatedPeerSpec : ownerRealm

      FederatedPeerSpec : peerRealm

      FederatedPeerSpec : signing





        FederatedPeerSpec --> "1" FederatedPeerSigning : signing
        click FederatedPeerSigning href "../FederatedPeerSigning/"



      FederatedPeerSpec : transport


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [peerRealm](peerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [endpoint](endpoint.md) | 1 <br/> [String](String.md) |  | direct |
| [transport](transport.md) | 1 <br/> [String](String.md) |  | direct |
| [mtls](mtls.md) | 1 <br/> [FederatedPeerMtls](FederatedPeerMtls.md) |  | direct |
| [signing](signing.md) | 1 <br/> [FederatedPeerSigning](FederatedPeerSigning.md) |  | direct |
| [federationProfileRefs](federationProfileRefs.md) | 1..* <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [FederatedPeer](FederatedPeer.md) | [spec](spec.md) | range | [FederatedPeerSpec](FederatedPeerSpec.md) |












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
| self | jumo:FederatedPeerSpec |
| native | jumo:FederatedPeerSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: FederatedPeerSpec
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
    owner: FederatedPeerSpec
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
  peerRealm:
    name: peerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: Identifier
    required: true
  endpoint:
    name: endpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: string
    required: true
    pattern: ^https://
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederatedPeerSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: string
    required: true
    equals_string: HTTP_CLOUDEVENTS
  mtls:
    name: mtls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: FederatedPeerMtls
    required: true
    inlined: true
  signing:
    name: signing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: FederatedPeerSigning
    required: true
    inlined: true
  federationProfileRefs:
    name: federationProfileRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: ContractReference
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
name: FederatedPeerSpec
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
    owner: FederatedPeerSpec
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
  peerRealm:
    name: peerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: Identifier
    required: true
  endpoint:
    name: endpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: string
    required: true
    pattern: ^https://
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederatedPeerSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: string
    required: true
    equals_string: HTTP_CLOUDEVENTS
  mtls:
    name: mtls
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: FederatedPeerMtls
    required: true
    inlined: true
  signing:
    name: signing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: FederatedPeerSigning
    required: true
    inlined: true
  federationProfileRefs:
    name: federationProfileRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederatedPeerSpec
    domain_of:
    - FederatedPeerSpec
    range: ContractReference
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>