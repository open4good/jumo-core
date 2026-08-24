---
search:
  boost: 10.0
---

# Class: OAuthClientBindingSpec


_Specification for an OAuthClientBinding contract._



<div data-search-exclude markdown="1">



URI: [jumo:OAuthClientBindingSpec](https://jumo.dev/schemas/jumo-v1/OAuthClientBindingSpec)





```mermaid
 classDiagram
    class OAuthClientBindingSpec
    click OAuthClientBindingSpec href "../OAuthClientBindingSpec/"
      OAuthClientBindingSpec : authEndpoint

      OAuthClientBindingSpec : clientId

      OAuthClientBindingSpec : ownerRealm

      OAuthClientBindingSpec : ownership

      OAuthClientBindingSpec : tokenEndpoint

      OAuthClientBindingSpec : vaultSecretPath


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [ownership](ownership.md) | 1 <br/> [String](String.md) |  | direct |
| [clientId](clientId.md) | 1 <br/> [String](String.md) |  | direct |
| [authEndpoint](authEndpoint.md) | 1 <br/> [String](String.md) |  | direct |
| [tokenEndpoint](tokenEndpoint.md) | 1 <br/> [String](String.md) |  | direct |
| [vaultSecretPath](vaultSecretPath.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OAuthClientBinding](OAuthClientBinding.md) | [spec](spec.md) | range | [OAuthClientBindingSpec](OAuthClientBindingSpec.md) |












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
| self | jumo:OAuthClientBindingSpec |
| native | jumo:OAuthClientBindingSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OAuthClientBindingSpec
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
description: Specification for an OAuthClientBinding contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OAuthClientBindingSpec
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
  ownership:
    name: ownership
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OAuthClientBindingSpec
    domain_of:
    - OfferingClientRepository
    - OAuthClientBindingSpec
    range: string
    required: true
  clientId:
    name: clientId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  authEndpoint:
    name: authEndpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  tokenEndpoint:
    name: tokenEndpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  vaultSecretPath:
    name: vaultSecretPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: OAuthClientBindingSpec
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
description: Specification for an OAuthClientBinding contract.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OAuthClientBindingSpec
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
  ownership:
    name: ownership
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OAuthClientBindingSpec
    domain_of:
    - OfferingClientRepository
    - OAuthClientBindingSpec
    range: string
    required: true
  clientId:
    name: clientId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  authEndpoint:
    name: authEndpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  tokenEndpoint:
    name: tokenEndpoint
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true
  vaultSecretPath:
    name: vaultSecretPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OAuthClientBindingSpec
    domain_of:
    - OAuthClientBindingSpec
    range: string
    required: true

```
</details></div>