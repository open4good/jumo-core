---
search:
  boost: 10.0
---

# Class: OrganizationTemplateSpec

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationTemplateSpec](https://jumo.dev/schemas/jumo-v1/OrganizationTemplateSpec)





```mermaid
 classDiagram
    class OrganizationTemplateSpec
    click OrganizationTemplateSpec href "../OrganizationTemplateSpec/"
      OrganizationTemplateSpec : blueprintName

      OrganizationTemplateSpec : methodologySource





        OrganizationTemplateSpec --> "1" MethodologySource : methodologySource
        click MethodologySource href "../MethodologySource/"



      OrganizationTemplateSpec : ownerRealm

      OrganizationTemplateSpec : profiles

      OrganizationTemplateSpec : roleLifecyclePolicyRef





        OrganizationTemplateSpec --> "0..1" ContractReference : roleLifecyclePolicyRef
        click ContractReference href "../ContractReference/"



      OrganizationTemplateSpec : roles

      OrganizationTemplateSpec : teams


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [blueprintName](blueprintName.md) | 1 <br/> [String](String.md) |  | direct |
| [roles](roles.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [teams](teams.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [profiles](profiles.md) | * <br/> [Identifier](Identifier.md) |  | direct |
| [roleLifecyclePolicyRef](roleLifecyclePolicyRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [methodologySource](methodologySource.md) | 1 <br/> [MethodologySource](MethodologySource.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationTemplate](OrganizationTemplate.md) | [spec](spec.md) | range | [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |












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
| self | jumo:OrganizationTemplateSpec |
| native | jumo:OrganizationTemplateSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationTemplateSpec
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
    owner: OrganizationTemplateSpec
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
  blueprintName:
    name: blueprintName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: string
    required: true
    pattern: ^.{3,}$
  roles:
    name: roles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  teams:
    name: teams
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  profiles:
    name: profiles
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationTemplateSpec
    domain_of:
    - JumoKitSpec
    - KitBindingSpec
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  roleLifecyclePolicyRef:
    name: roleLifecyclePolicyRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: ContractReference
    inlined: true
  methodologySource:
    name: methodologySource
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: MethodologySource
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationTemplateSpec
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
    owner: OrganizationTemplateSpec
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
  blueprintName:
    name: blueprintName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: string
    required: true
    pattern: ^.{3,}$
  roles:
    name: roles
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  teams:
    name: teams
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  profiles:
    name: profiles
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: OrganizationTemplateSpec
    domain_of:
    - JumoKitSpec
    - KitBindingSpec
    - OrganizationTemplateSpec
    range: Identifier
    multivalued: true
  roleLifecyclePolicyRef:
    name: roleLifecyclePolicyRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: ContractReference
    inlined: true
  methodologySource:
    name: methodologySource
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationTemplateSpec
    domain_of:
    - OrganizationTemplateSpec
    range: MethodologySource
    required: true
    inlined: true

```
</details></div>