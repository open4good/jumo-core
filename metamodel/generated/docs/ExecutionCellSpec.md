---
search:
  boost: 10.0
---

# Class: ExecutionCellSpec

<div data-search-exclude markdown="1">



URI: [jumo:ExecutionCellSpec](https://jumo.dev/schemas/jumo-v1/ExecutionCellSpec)





```mermaid
 classDiagram
    class ExecutionCellSpec
    click ExecutionCellSpec href "../ExecutionCellSpec/"
      ExecutionCellSpec : connectorDefinitionRefs





        ExecutionCellSpec --> "1..*" ContractReference : connectorDefinitionRefs
        click ContractReference href "../ContractReference/"



      ExecutionCellSpec : credentialCustody





        ExecutionCellSpec --> "1" ExecutionCellCredentialCustody : credentialCustody
        click ExecutionCellCredentialCustody href "../ExecutionCellCredentialCustody/"



      ExecutionCellSpec : identity





        ExecutionCellSpec --> "1" ExecutionCellIdentity : identity
        click ExecutionCellIdentity href "../ExecutionCellIdentity/"



      ExecutionCellSpec : lifecycle





        ExecutionCellSpec --> "1" ExecutionCellLifecycle : lifecycle
        click ExecutionCellLifecycle href "../ExecutionCellLifecycle/"



      ExecutionCellSpec : localProtocol





        ExecutionCellSpec --> "0..1" ExecutionCellLocalProtocol : localProtocol
        click ExecutionCellLocalProtocol href "../ExecutionCellLocalProtocol/"



      ExecutionCellSpec : mountedPersonalSpaceRefs





        ExecutionCellSpec --> "*" ContractReference : mountedPersonalSpaceRefs
        click ContractReference href "../ContractReference/"



      ExecutionCellSpec : ownerRealm

      ExecutionCellSpec : placement





        ExecutionCellSpec --> "1" ExecutionCellPlacement : placement
        click ExecutionCellPlacement href "../ExecutionCellPlacement/"



      ExecutionCellSpec : transport





        ExecutionCellSpec --> "1" ExecutionCellTransport : transport
        click ExecutionCellTransport href "../ExecutionCellTransport/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [placement](placement.md) | 1 <br/> [ExecutionCellPlacement](ExecutionCellPlacement.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [ExecutionCellLifecycle](ExecutionCellLifecycle.md) |  | direct |
| [identity](identity.md) | 1 <br/> [ExecutionCellIdentity](ExecutionCellIdentity.md) |  | direct |
| [transport](transport.md) | 1 <br/> [ExecutionCellTransport](ExecutionCellTransport.md) |  | direct |
| [connectorDefinitionRefs](connectorDefinitionRefs.md) | 1..* <br/> [ContractReference](ContractReference.md) |  | direct |
| [localProtocol](localProtocol.md) | 0..1 <br/> [ExecutionCellLocalProtocol](ExecutionCellLocalProtocol.md) |  | direct |
| [credentialCustody](credentialCustody.md) | 1 <br/> [ExecutionCellCredentialCustody](ExecutionCellCredentialCustody.md) | Must equal LOCAL_CELL_SEALED (Rego, corpus | direct |
| [mountedPersonalSpaceRefs](mountedPersonalSpaceRefs.md) | * <br/> [ContractReference](ContractReference.md) | PersonalSpace documents mounted into this cell's private workspace filesystem | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ExecutionCell](ExecutionCell.md) | [spec](spec.md) | range | [ExecutionCellSpec](ExecutionCellSpec.md) |












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
| self | jumo:ExecutionCellSpec |
| native | jumo:ExecutionCellSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExecutionCellSpec
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
    owner: ExecutionCellSpec
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
  placement:
    name: placement
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - ExecutionCellSpec
    range: ExecutionCellPlacement
    required: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
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
    range: ExecutionCellLifecycle
    required: true
  identity:
    name: identity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellIdentity
    required: true
    inlined: true
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: ExecutionCellTransport
    required: true
    inlined: true
  connectorDefinitionRefs:
    name: connectorDefinitionRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ContractReference
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  localProtocol:
    name: localProtocol
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellLocalProtocol
  credentialCustody:
    name: credentialCustody
    description: Must equal LOCAL_CELL_SEALED (Rego, corpus.cell.credential-custody).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellCredentialCustody
    required: true
  mountedPersonalSpaceRefs:
    name: mountedPersonalSpaceRefs
    description: PersonalSpace documents mounted into this cell's private workspace
      filesystem. Each referenced PersonalSpace must belong to the same Realm as this
      cell (Rego, corpus.cell.workspace-realm-scoped) -- private documents never mount
      into another tenant's dedicated Execution Cell.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: ExecutionCellSpec
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
    owner: ExecutionCellSpec
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
  placement:
    name: placement
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - ExecutionCellSpec
    range: ExecutionCellPlacement
    required: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
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
    range: ExecutionCellLifecycle
    required: true
  identity:
    name: identity
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellIdentity
    required: true
    inlined: true
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionCellSpec
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: ExecutionCellTransport
    required: true
    inlined: true
  connectorDefinitionRefs:
    name: connectorDefinitionRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ContractReference
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  localProtocol:
    name: localProtocol
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellLocalProtocol
  credentialCustody:
    name: credentialCustody
    description: Must equal LOCAL_CELL_SEALED (Rego, corpus.cell.credential-custody).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ExecutionCellCredentialCustody
    required: true
  mountedPersonalSpaceRefs:
    name: mountedPersonalSpaceRefs
    description: PersonalSpace documents mounted into this cell's private workspace
      filesystem. Each referenced PersonalSpace must belong to the same Realm as this
      cell (Rego, corpus.cell.workspace-realm-scoped) -- private documents never mount
      into another tenant's dedicated Execution Cell.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellSpec
    domain_of:
    - ExecutionCellSpec
    range: ContractReference
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>