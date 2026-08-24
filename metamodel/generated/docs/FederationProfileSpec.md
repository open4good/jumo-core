---
search:
  boost: 10.0
---

# Class: FederationProfileSpec

<div data-search-exclude markdown="1">



URI: [jumo:FederationProfileSpec](https://jumo.dev/schemas/jumo-v1/FederationProfileSpec)





```mermaid
 classDiagram
    class FederationProfileSpec
    click FederationProfileSpec href "../FederationProfileSpec/"
      FederationProfileSpec : handlerModuleRef

      FederationProfileSpec : messages





        FederationProfileSpec --> "1..*" FederationMessage : messages
        click FederationMessage href "../FederationMessage/"



      FederationProfileSpec : namespace

      FederationProfileSpec : ownerRealm

      FederationProfileSpec : version


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [namespace](namespace.md) | 1 <br/> [String](String.md) |  | direct |
| [version](version.md) | 1 <br/> [String](String.md) |  | direct |
| [handlerModuleRef](handlerModuleRef.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |
| [messages](messages.md) | 1..* <br/> [FederationMessage](FederationMessage.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [FederationProfile](FederationProfile.md) | [spec](spec.md) | range | [FederationProfileSpec](FederationProfileSpec.md) |












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
| self | jumo:FederationProfileSpec |
| native | jumo:FederationProfileSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: FederationProfileSpec
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
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
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
  namespace:
    name: namespace
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
    domain_of:
    - ContractReference
    - Metadata
    - FederationProfileSpec
    range: string
    required: true
    pattern: ^[a-z][a-z0-9.-]{2,63}$
  version:
    name: version
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
    domain_of:
    - CliReleaseSpec
    - McpCatalogVersion
    - FederationProfileSpec
    - ConnectorPackageSpec
    range: string
    required: true
    pattern: ^\d+\.\d+\.\d+$
  handlerModuleRef:
    name: handlerModuleRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederationProfileSpec
    domain_of:
    - FederationProfileSpec
    range: Identifier
  messages:
    name: messages
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederationProfileSpec
    domain_of:
    - FederationProfileSpec
    range: FederationMessage
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
name: FederationProfileSpec
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
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
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
  namespace:
    name: namespace
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
    domain_of:
    - ContractReference
    - Metadata
    - FederationProfileSpec
    range: string
    required: true
    pattern: ^[a-z][a-z0-9.-]{2,63}$
  version:
    name: version
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: FederationProfileSpec
    domain_of:
    - CliReleaseSpec
    - McpCatalogVersion
    - FederationProfileSpec
    - ConnectorPackageSpec
    range: string
    required: true
    pattern: ^\d+\.\d+\.\d+$
  handlerModuleRef:
    name: handlerModuleRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederationProfileSpec
    domain_of:
    - FederationProfileSpec
    range: Identifier
  messages:
    name: messages
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: FederationProfileSpec
    domain_of:
    - FederationProfileSpec
    range: FederationMessage
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>