---
search:
  boost: 10.0
---

# Class: RoleDefinitionSpec

<div data-search-exclude markdown="1">



URI: [jumo:RoleDefinitionSpec](https://jumo.dev/schemas/jumo-v1/RoleDefinitionSpec)





```mermaid
 classDiagram
    class RoleDefinitionSpec
    click RoleDefinitionSpec href "../RoleDefinitionSpec/"
      RoleDefinitionSpec : delegatedRealmRef

      RoleDefinitionSpec : independenceGroup

      RoleDefinitionSpec : isMetaRole

      RoleDefinitionSpec : mission

      RoleDefinitionSpec : ownerRealm

      RoleDefinitionSpec : roleKey


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [mission](mission.md) | 1 <br/> [String](String.md) |  | direct |
| [roleKey](roleKey.md) | 0..1 <br/> [String](String.md) | Optional decorative ThemePack lookup key | direct |
| [isMetaRole](isMetaRole.md) | 0..1 <br/> [Boolean](Boolean.md) | When true, this role acts on behalf of a Jumo Control Plane or Child Realm | direct |
| [delegatedRealmRef](delegatedRealmRef.md) | 0..1 <br/> [Identifier](Identifier.md) | Optional child or target Realm governed by this meta-role | direct |
| [independenceGroup](independenceGroup.md) | 0..1 <br/> [Identifier](Identifier.md) | A role's own separation-of-duties group | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RoleDefinition](RoleDefinition.md) | [spec](spec.md) | range | [RoleDefinitionSpec](RoleDefinitionSpec.md) |












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
| self | jumo:RoleDefinitionSpec |
| native | jumo:RoleDefinitionSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RoleDefinitionSpec
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
    owner: RoleDefinitionSpec
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
  mission:
    name: mission
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - OrganizationSpecBody
    range: string
    required: true
    pattern: ^.{10,}$
  roleKey:
    name: roleKey
    description: Optional decorative ThemePack lookup key. Never replaces metadata.id.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    pattern: ^[a-z][A-Za-z0-9]*$
  isMetaRole:
    name: isMetaRole
    description: When true, this role acts on behalf of a Jumo Control Plane or Child
      Realm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    range: boolean
  delegatedRealmRef:
    name: delegatedRealmRef
    description: Optional child or target Realm governed by this meta-role.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    range: Identifier
  independenceGroup:
    name: independenceGroup
    description: A role's own separation-of-duties group. Two roles sharing one group
      may not jointly produce and verify the same WorkOrder (governance.rego distinct_independence_groups);
      absent for a meta-role (Nestor, Owner) that is never itself a team roster candidate.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - TeamMember
    - ProviderAccountSpec
    - ProviderPlatformSpec
    range: Identifier

```
</details>

### Induced

<details>
```yaml
name: RoleDefinitionSpec
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
    owner: RoleDefinitionSpec
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
  mission:
    name: mission
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - OrganizationSpecBody
    range: string
    required: true
    pattern: ^.{10,}$
  roleKey:
    name: roleKey
    description: Optional decorative ThemePack lookup key. Never replaces metadata.id.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    pattern: ^[a-z][A-Za-z0-9]*$
  isMetaRole:
    name: isMetaRole
    description: When true, this role acts on behalf of a Jumo Control Plane or Child
      Realm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    range: boolean
  delegatedRealmRef:
    name: delegatedRealmRef
    description: Optional child or target Realm governed by this meta-role.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    range: Identifier
  independenceGroup:
    name: independenceGroup
    description: A role's own separation-of-duties group. Two roles sharing one group
      may not jointly produce and verify the same WorkOrder (governance.rego distinct_independence_groups);
      absent for a meta-role (Nestor, Owner) that is never itself a team roster candidate.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleDefinitionSpec
    domain_of:
    - RoleDefinitionSpec
    - TeamMember
    - ProviderAccountSpec
    - ProviderPlatformSpec
    range: Identifier

```
</details></div>