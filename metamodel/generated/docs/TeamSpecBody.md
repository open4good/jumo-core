---
search:
  boost: 10.0
---

# Class: TeamSpecBody

<div data-search-exclude markdown="1">



URI: [jumo:TeamSpecBody](https://jumo.dev/schemas/jumo-v1/TeamSpecBody)





```mermaid
 classDiagram
    class TeamSpecBody
    click TeamSpecBody href "../TeamSpecBody/"
      TeamSpecBody : coordination





        TeamSpecBody --> "1" TeamCoordination : coordination
        click TeamCoordination href "../TeamCoordination/"



      TeamSpecBody : members





        TeamSpecBody --> "1..*" TeamMember : members
        click TeamMember href "../TeamMember/"



      TeamSpecBody : ownerRealm

      TeamSpecBody : purpose

      TeamSpecBody : roleKey


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [purpose](purpose.md) | 1 <br/> [String](String.md) |  | direct |
| [roleKey](roleKey.md) | 0..1 <br/> [String](String.md) |  | direct |
| [coordination](coordination.md) | 1 <br/> [TeamCoordination](TeamCoordination.md) | The managed dependency, not the team, is the unit of analysis (docs/concepts/... | direct |
| [members](members.md) | 1..* <br/> [TeamMember](TeamMember.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [TeamSpec](TeamSpec.md) | [spec](spec.md) | range | [TeamSpecBody](TeamSpecBody.md) |












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
| self | jumo:TeamSpecBody |
| native | jumo:TeamSpecBody |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: TeamSpecBody
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
    owner: TeamSpecBody
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
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamSpecBody
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  roleKey:
    name: roleKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamSpecBody
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    pattern: ^[a-z][A-Za-z0-9]*$
  coordination:
    name: coordination
    description: The managed dependency, not the team, is the unit of analysis (docs/concepts/positionnement-conceptuel.md#coordination-des-dependances).
      The source schema forced one `mode` for the whole team; this carries one or
      more CoordinationMechanismBinding entries instead, each scoped to the dependency
      it governs.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamSpecBody
    domain_of:
    - TeamSpecBody
    range: TeamCoordination
    required: true
    inlined: true
  members:
    name: members
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamSpecBody
    domain_of:
    - TeamSpecBody
    range: TeamMember
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 2

```
</details>

### Induced

<details>
```yaml
name: TeamSpecBody
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
    owner: TeamSpecBody
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
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamSpecBody
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  roleKey:
    name: roleKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: TeamSpecBody
    domain_of:
    - RoleDefinitionSpec
    - TeamSpecBody
    - TerminologyEntry
    - ThemeVoiceRoleOverride
    range: string
    pattern: ^[a-z][A-Za-z0-9]*$
  coordination:
    name: coordination
    description: The managed dependency, not the team, is the unit of analysis (docs/concepts/positionnement-conceptuel.md#coordination-des-dependances).
      The source schema forced one `mode` for the whole team; this carries one or
      more CoordinationMechanismBinding entries instead, each scoped to the dependency
      it governs.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamSpecBody
    domain_of:
    - TeamSpecBody
    range: TeamCoordination
    required: true
    inlined: true
  members:
    name: members
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: TeamSpecBody
    domain_of:
    - TeamSpecBody
    range: TeamMember
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 2

```
</details></div>