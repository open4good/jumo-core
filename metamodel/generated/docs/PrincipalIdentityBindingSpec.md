---
search:
  boost: 10.0
---

# Class: PrincipalIdentityBindingSpec

<div data-search-exclude markdown="1">



URI: [jumo:PrincipalIdentityBindingSpec](https://jumo.dev/schemas/jumo-v1/PrincipalIdentityBindingSpec)





```mermaid
 classDiagram
    class PrincipalIdentityBindingSpec
    click PrincipalIdentityBindingSpec href "../PrincipalIdentityBindingSpec/"
      PrincipalIdentityBindingSpec : issuer

      PrincipalIdentityBindingSpec : oidcSubject

      PrincipalIdentityBindingSpec : ownerRealm

      PrincipalIdentityBindingSpec : principalRef





        PrincipalIdentityBindingSpec --> "1" ContractReference : principalRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [principalRef](principalRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [oidcSubject](oidcSubject.md) | 1 <br/> [String](String.md) |  | direct |
| [issuer](issuer.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PrincipalIdentityBinding](PrincipalIdentityBinding.md) | [spec](spec.md) | range | [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |












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
| self | jumo:PrincipalIdentityBindingSpec |
| native | jumo:PrincipalIdentityBindingSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PrincipalIdentityBindingSpec
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
    owner: PrincipalIdentityBindingSpec
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
  principalRef:
    name: principalRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    - RoleBearer
    - ConnectorSessionBinding
    range: ContractReference
    required: true
    inlined: true
  oidcSubject:
    name: oidcSubject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    range: string
    required: true
    pattern: ^.{1,}$
  issuer:
    name: issuer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    range: string
    required: true
    pattern: ^https://.+$

```
</details>

### Induced

<details>
```yaml
name: PrincipalIdentityBindingSpec
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
    owner: PrincipalIdentityBindingSpec
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
  principalRef:
    name: principalRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    - RoleBearer
    - ConnectorSessionBinding
    range: ContractReference
    required: true
    inlined: true
  oidcSubject:
    name: oidcSubject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    range: string
    required: true
    pattern: ^.{1,}$
  issuer:
    name: issuer
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalIdentityBindingSpec
    domain_of:
    - PrincipalIdentityBindingSpec
    range: string
    required: true
    pattern: ^https://.+$

```
</details></div>