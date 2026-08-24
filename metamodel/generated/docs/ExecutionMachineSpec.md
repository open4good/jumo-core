---
search:
  boost: 10.0
---

# Class: ExecutionMachineSpec


_Specification for an ExecutionMachine contract._



<div data-search-exclude markdown="1">



URI: [jumo:ExecutionMachineSpec](https://jumo.dev/schemas/jumo-v1/ExecutionMachineSpec)





```mermaid
 classDiagram
    class ExecutionMachineSpec
    click ExecutionMachineSpec href "../ExecutionMachineSpec/"
      ExecutionMachineSpec : ansibleBaselineRef

      ExecutionMachineSpec : desiredState





        ExecutionMachineSpec --> "1" MachineDesiredState : desiredState
        click MachineDesiredState href "../MachineDesiredState/"



      ExecutionMachineSpec : environment





        ExecutionMachineSpec --> "1" MachineEnvironment : environment
        click MachineEnvironment href "../MachineEnvironment/"



      ExecutionMachineSpec : hostDefinitionRef

      ExecutionMachineSpec : installedCliRefs

      ExecutionMachineSpec : installedConnectorRefs

      ExecutionMachineSpec : network





        ExecutionMachineSpec --> "0..1" MachineNetworkConfig : network
        click MachineNetworkConfig href "../MachineNetworkConfig/"



      ExecutionMachineSpec : origin





        ExecutionMachineSpec --> "1" MachineOrigin : origin
        click MachineOrigin href "../MachineOrigin/"



      ExecutionMachineSpec : ownerRealm


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [origin](origin.md) | 1 <br/> [MachineOrigin](MachineOrigin.md) |  | direct |
| [environment](environment.md) | 1 <br/> [MachineEnvironment](MachineEnvironment.md) |  | direct |
| [desiredState](desiredState.md) | 1 <br/> [MachineDesiredState](MachineDesiredState.md) |  | direct |
| [hostDefinitionRef](hostDefinitionRef.md) | 0..1 <br/> [String](String.md) |  | direct |
| [installedCliRefs](installedCliRefs.md) | * <br/> [String](String.md) |  | direct |
| [installedConnectorRefs](installedConnectorRefs.md) | * <br/> [String](String.md) |  | direct |
| [ansibleBaselineRef](ansibleBaselineRef.md) | 0..1 <br/> [String](String.md) |  | direct |
| [network](network.md) | 0..1 <br/> [MachineNetworkConfig](MachineNetworkConfig.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ExecutionMachine](ExecutionMachine.md) | [spec](spec.md) | range | [ExecutionMachineSpec](ExecutionMachineSpec.md) |












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
| self | jumo:ExecutionMachineSpec |
| native | jumo:ExecutionMachineSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExecutionMachineSpec
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
description: Specification for an ExecutionMachine contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionMachineSpec
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
  origin:
    name: origin
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: MachineOrigin
    required: true
  environment:
    name: environment
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: MachineEnvironment
    required: true
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionMachineSpec
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: MachineDesiredState
    required: true
  hostDefinitionRef:
    name: hostDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
  installedCliRefs:
    name: installedCliRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
    multivalued: true
  installedConnectorRefs:
    name: installedConnectorRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
    multivalued: true
  ansibleBaselineRef:
    name: ansibleBaselineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
  network:
    name: network
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    - WorkerIsolation
    range: MachineNetworkConfig
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ExecutionMachineSpec
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
description: Specification for an ExecutionMachine contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionMachineSpec
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
  origin:
    name: origin
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: MachineOrigin
    required: true
  environment:
    name: environment
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: MachineEnvironment
    required: true
  desiredState:
    name: desiredState
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ExecutionMachineSpec
    domain_of:
    - ProjectStateAuthority
    - ExecutionMachineSpec
    - CliInstallationDesiredState
    range: MachineDesiredState
    required: true
  hostDefinitionRef:
    name: hostDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
  installedCliRefs:
    name: installedCliRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
    multivalued: true
  installedConnectorRefs:
    name: installedConnectorRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
    multivalued: true
  ansibleBaselineRef:
    name: ansibleBaselineRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    range: string
  network:
    name: network
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionMachineSpec
    domain_of:
    - ExecutionMachineSpec
    - WorkerIsolation
    range: MachineNetworkConfig
    inlined: true

```
</details></div>