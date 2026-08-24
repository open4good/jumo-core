---
search:
  boost: 10.0
---

# Class: KitLockSpec

<div data-search-exclude markdown="1">



URI: [jumo:KitLockSpec](https://jumo.dev/schemas/jumo-v1/KitLockSpec)





```mermaid
 classDiagram
    class KitLockSpec
    click KitLockSpec href "../KitLockSpec/"
      KitLockSpec : commit

      KitLockSpec : kitBindingRef





        KitLockSpec --> "1" ContractReference : kitBindingRef
        click ContractReference href "../ContractReference/"



      KitLockSpec : kitReleaseCertificationRef





        KitLockSpec --> "1" ContractReference : kitReleaseCertificationRef
        click ContractReference href "../ContractReference/"



      KitLockSpec : manifestDigest

      KitLockSpec : ownerRealm

      KitLockSpec : rendered





        KitLockSpec --> "1..*" RenderedKitFile : rendered
        click RenderedKitFile href "../RenderedKitFile/"



      KitLockSpec : renderedAssets





        KitLockSpec --> "*" RenderedKitAsset : renderedAssets
        click RenderedKitAsset href "../RenderedKitAsset/"



      KitLockSpec : repository


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [kitBindingRef](kitBindingRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [repository](repository.md) | 1 <br/> [String](String.md) |  | direct |
| [commit](commit.md) | 1 <br/> [String](String.md) |  | direct |
| [manifestDigest](manifestDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [kitReleaseCertificationRef](kitReleaseCertificationRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [rendered](rendered.md) | 1..* <br/> [RenderedKitFile](RenderedKitFile.md) |  | direct |
| [renderedAssets](renderedAssets.md) | * <br/> [RenderedKitAsset](RenderedKitAsset.md) | Provenance for assetExports (JumoKitSpec) admitted by this release, if any | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [KitLock](KitLock.md) | [spec](spec.md) | range | [KitLockSpec](KitLockSpec.md) |












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
| self | jumo:KitLockSpec |
| native | jumo:KitLockSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitLockSpec
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
    owner: KitLockSpec
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
  kitBindingRef:
    name: kitBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: ContractReference
    required: true
    inlined: true
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitLockSpec
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitLockSpec
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  manifestDigest:
    name: manifestDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  kitReleaseCertificationRef:
    name: kitReleaseCertificationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: ContractReference
    required: true
    inlined: true
  rendered:
    name: rendered
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: RenderedKitFile
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  renderedAssets:
    name: renderedAssets
    description: Provenance for assetExports (JumoKitSpec) admitted by this release,
      if any.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: RenderedKitAsset
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: KitLockSpec
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
    owner: KitLockSpec
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
  kitBindingRef:
    name: kitBindingRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: ContractReference
    required: true
    inlined: true
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitLockSpec
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitLockSpec
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  manifestDigest:
    name: manifestDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  kitReleaseCertificationRef:
    name: kitReleaseCertificationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: ContractReference
    required: true
    inlined: true
  rendered:
    name: rendered
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: RenderedKitFile
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  renderedAssets:
    name: renderedAssets
    description: Provenance for assetExports (JumoKitSpec) admitted by this release,
      if any.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitLockSpec
    domain_of:
    - KitLockSpec
    range: RenderedKitAsset
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>