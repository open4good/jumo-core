---
search:
  boost: 10.0
---

# Class: PersonalSpaceSpec

<div data-search-exclude markdown="1">



URI: [jumo:PersonalSpaceSpec](https://jumo.dev/schemas/jumo-v1/PersonalSpaceSpec)





```mermaid
 classDiagram
    class PersonalSpaceSpec
    click PersonalSpaceSpec href "../PersonalSpaceSpec/"
      PersonalSpaceSpec : gitLfsPointers

      PersonalSpaceSpec : ownerPrincipal

      PersonalSpaceSpec : ownerRealm

      PersonalSpaceSpec : preferencesRef





        PersonalSpaceSpec --> "0..1" ContractReference : preferencesRef
        click ContractReference href "../ContractReference/"



      PersonalSpaceSpec : storageQuotaBytes

      PersonalSpaceSpec : workspacePath


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) | Realm this personal space belongs to | direct |
| [ownerPrincipal](ownerPrincipal.md) | 1 <br/> [Identifier](Identifier.md) | Principal (user or agent) owning this personal space | direct |
| [workspacePath](workspacePath.md) | 1 <br/> [String](String.md) |  | direct |
| [storageQuotaBytes](storageQuotaBytes.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [gitLfsPointers](gitLfsPointers.md) | * <br/> [String](String.md) |  | direct |
| [preferencesRef](preferencesRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PersonalSpace](PersonalSpace.md) | [spec](spec.md) | range | [PersonalSpaceSpec](PersonalSpaceSpec.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | PERSONAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:PersonalSpaceSpec |
| native | jumo:PersonalSpaceSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PersonalSpaceSpec
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
    value: PERSONAL
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
    description: Realm this personal space belongs to. An ExecutionCell may only mount
      a PersonalSpace whose ownerRealm matches its own (Rego, corpus.cell.workspace-realm-scoped).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PersonalSpaceSpec
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
  ownerPrincipal:
    name: ownerPrincipal
    description: Principal (user or agent) owning this personal space.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    - PreferencesSpec
    range: Identifier
    required: true
  workspacePath:
    name: workspacePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: string
    required: true
    pattern: ^[A-Za-z0-9._/-]+$
  storageQuotaBytes:
    name: storageQuotaBytes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: integer
    required: true
    minimum_value: 1048576
  gitLfsPointers:
    name: gitLfsPointers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: string
    multivalued: true
  preferencesRef:
    name: preferencesRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: ContractReference
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: PersonalSpaceSpec
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
    value: PERSONAL
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
    description: Realm this personal space belongs to. An ExecutionCell may only mount
      a PersonalSpace whose ownerRealm matches its own (Rego, corpus.cell.workspace-realm-scoped).
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PersonalSpaceSpec
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
  ownerPrincipal:
    name: ownerPrincipal
    description: Principal (user or agent) owning this personal space.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    - PreferencesSpec
    range: Identifier
    required: true
  workspacePath:
    name: workspacePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: string
    required: true
    pattern: ^[A-Za-z0-9._/-]+$
  storageQuotaBytes:
    name: storageQuotaBytes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: integer
    required: true
    minimum_value: 1048576
  gitLfsPointers:
    name: gitLfsPointers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: string
    multivalued: true
  preferencesRef:
    name: preferencesRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PersonalSpaceSpec
    domain_of:
    - PersonalSpaceSpec
    range: ContractReference
    inlined: true

```
</details></div>