---
search:
  boost: 10.0
---

# Class: OrganizationSpecBody

<div data-search-exclude markdown="1">



URI: [jumo:OrganizationSpecBody](https://jumo.dev/schemas/jumo-v1/OrganizationSpecBody)





```mermaid
 classDiagram
    class OrganizationSpecBody
    click OrganizationSpecBody href "../OrganizationSpecBody/"
      OrganizationSpecBody : incompatibleSeatPairs





        OrganizationSpecBody --> "*" SeatIncompatibility : incompatibleSeatPairs
        click SeatIncompatibility href "../SeatIncompatibility/"



      OrganizationSpecBody : independentSeatGroups





        OrganizationSpecBody --> "*" SeatIndependenceGroup : independentSeatGroups
        click SeatIndependenceGroup href "../SeatIndependenceGroup/"



      OrganizationSpecBody : mission

      OrganizationSpecBody : organizationTemplateRef





        OrganizationSpecBody --> "0..1" ContractReference : organizationTemplateRef
        click ContractReference href "../ContractReference/"



      OrganizationSpecBody : ownerRealm

      OrganizationSpecBody : roleRefs





        OrganizationSpecBody --> "1..*" OrganizationRoleBinding : roleRefs
        click OrganizationRoleBinding href "../OrganizationRoleBinding/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [mission](mission.md) | 1 <br/> [String](String.md) |  | direct |
| [roleRefs](roleRefs.md) | 1..* <br/> [OrganizationRoleBinding](OrganizationRoleBinding.md) | References RoleDefinition entries this organization uses, each bound to a nam... | direct |
| [organizationTemplateRef](organizationTemplateRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Optional OrganizationTemplate this organization was instantiated from | direct |
| [incompatibleSeatPairs](incompatibleSeatPairs.md) | * <br/> [SeatIncompatibility](SeatIncompatibility.md) | Seats that may never be filled by the same RoleAssignment bearer (e | direct |
| [independentSeatGroups](independentSeatGroups.md) | * <br/> [SeatIndependenceGroup](SeatIndependenceGroup.md) | Seats whose bearers must sit in different independence groups (e | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationSpec](OrganizationSpec.md) | [spec](spec.md) | range | [OrganizationSpecBody](OrganizationSpecBody.md) |












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
| self | jumo:OrganizationSpecBody |
| native | jumo:OrganizationSpecBody |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: OrganizationSpecBody
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
    owner: OrganizationSpecBody
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
    owner: OrganizationSpecBody
    domain_of:
    - RoleDefinitionSpec
    - OrganizationSpecBody
    range: string
    required: true
    pattern: ^.{10,}$
  roleRefs:
    name: roleRefs
    description: References RoleDefinition entries this organization uses, each bound
      to a named seat.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: OrganizationRoleBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  organizationTemplateRef:
    name: organizationTemplateRef
    description: Optional OrganizationTemplate this organization was instantiated
      from.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: ContractReference
    inlined: true
  incompatibleSeatPairs:
    name: incompatibleSeatPairs
    description: Seats that may never be filled by the same RoleAssignment bearer
      (e.g. implementer and reviewer). Enforced in Rego, not here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: SeatIncompatibility
    multivalued: true
    inlined: true
    inlined_as_list: true
  independentSeatGroups:
    name: independentSeatGroups
    description: Seats whose bearers must sit in different independence groups (e.g.
      reviewer needs a distinct provider group from implementer). Enforced in Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: SeatIndependenceGroup
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: OrganizationSpecBody
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
    owner: OrganizationSpecBody
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
    owner: OrganizationSpecBody
    domain_of:
    - RoleDefinitionSpec
    - OrganizationSpecBody
    range: string
    required: true
    pattern: ^.{10,}$
  roleRefs:
    name: roleRefs
    description: References RoleDefinition entries this organization uses, each bound
      to a named seat.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: OrganizationRoleBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  organizationTemplateRef:
    name: organizationTemplateRef
    description: Optional OrganizationTemplate this organization was instantiated
      from.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: ContractReference
    inlined: true
  incompatibleSeatPairs:
    name: incompatibleSeatPairs
    description: Seats that may never be filled by the same RoleAssignment bearer
      (e.g. implementer and reviewer). Enforced in Rego, not here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: SeatIncompatibility
    multivalued: true
    inlined: true
    inlined_as_list: true
  independentSeatGroups:
    name: independentSeatGroups
    description: Seats whose bearers must sit in different independence groups (e.g.
      reviewer needs a distinct provider group from implementer). Enforced in Rego.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: OrganizationSpecBody
    domain_of:
    - OrganizationSpecBody
    range: SeatIndependenceGroup
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>