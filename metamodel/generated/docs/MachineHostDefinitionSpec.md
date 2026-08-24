---
search:
  boost: 10.0
---

# Class: MachineHostDefinitionSpec


_Specification for a MachineHostDefinition contract._



<div data-search-exclude markdown="1">



URI: [jumo:MachineHostDefinitionSpec](https://jumo.dev/schemas/jumo-v1/MachineHostDefinitionSpec)





```mermaid
 classDiagram
    class MachineHostDefinitionSpec
    click MachineHostDefinitionSpec href "../MachineHostDefinitionSpec/"
      MachineHostDefinitionSpec : bridgeNetwork

      MachineHostDefinitionSpec : domainPrefix

      MachineHostDefinitionSpec : driver

      MachineHostDefinitionSpec : memoryBytes

      MachineHostDefinitionSpec : ownerRealm

      MachineHostDefinitionSpec : storagePool

      MachineHostDefinitionSpec : vcpuCount


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [driver](driver.md) | 1 <br/> [String](String.md) |  | direct |
| [domainPrefix](domainPrefix.md) | 0..1 <br/> [String](String.md) |  | direct |
| [storagePool](storagePool.md) | 0..1 <br/> [String](String.md) |  | direct |
| [bridgeNetwork](bridgeNetwork.md) | 0..1 <br/> [String](String.md) |  | direct |
| [memoryBytes](memoryBytes.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [vcpuCount](vcpuCount.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [MachineHostDefinition](MachineHostDefinition.md) | [spec](spec.md) | range | [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:MachineHostDefinitionSpec |
| native | jumo:MachineHostDefinitionSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MachineHostDefinitionSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Specification for a MachineHostDefinition contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineHostDefinitionSpec
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
  driver:
    name: driver
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
    required: true
  domainPrefix:
    name: domainPrefix
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  storagePool:
    name: storagePool
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  bridgeNetwork:
    name: bridgeNetwork
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  memoryBytes:
    name: memoryBytes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    - MachineInventoryObservation
    range: integer
  vcpuCount:
    name: vcpuCount
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: integer

```
</details>

### Induced

<details>
```yaml
name: MachineHostDefinitionSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Specification for a MachineHostDefinition contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: MachineHostDefinitionSpec
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
  driver:
    name: driver
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
    required: true
  domainPrefix:
    name: domainPrefix
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  storagePool:
    name: storagePool
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  bridgeNetwork:
    name: bridgeNetwork
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: string
  memoryBytes:
    name: memoryBytes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    - MachineInventoryObservation
    range: integer
  vcpuCount:
    name: vcpuCount
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MachineHostDefinitionSpec
    domain_of:
    - MachineHostDefinitionSpec
    range: integer

```
</details></div>