---
search:
  boost: 10.0
---

# Class: PrincipalSpec

<div data-search-exclude markdown="1">



URI: [jumo:PrincipalSpec](https://jumo.dev/schemas/jumo-v1/PrincipalSpec)





```mermaid
 classDiagram
    class PrincipalSpec
    click PrincipalSpec href "../PrincipalSpec/"
      PrincipalSpec : channelBindingRefs

      PrincipalSpec : consentState





        PrincipalSpec --> "1" ConsentState : consentState
        click ConsentState href "../ConsentState/"



      PrincipalSpec : displayName

      PrincipalSpec : ownerRealm

      PrincipalSpec : personalSpaceRef





        PrincipalSpec --> "0..1" ContractReference : personalSpaceRef
        click ContractReference href "../ContractReference/"



      PrincipalSpec : principalKind





        PrincipalSpec --> "1" PrincipalKind : principalKind
        click PrincipalKind href "../PrincipalKind/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [principalKind](principalKind.md) | 1 <br/> [PrincipalKind](PrincipalKind.md) | OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions; a CONTACT... | direct |
| [displayName](displayName.md) | 1 <br/> [String](String.md) |  | direct |
| [personalSpaceRef](personalSpaceRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Present only for OWNER and MEMBER | direct |
| [consentState](consentState.md) | 1 <br/> [ConsentState](ConsentState.md) | NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the Realm | direct |
| [channelBindingRefs](channelBindingRefs.md) | * <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [Principal](Principal.md) | [spec](spec.md) | range | [PrincipalSpec](PrincipalSpec.md) |












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
| self | jumo:PrincipalSpec |
| native | jumo:PrincipalSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PrincipalSpec
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
    rank: 1000
    owner: PrincipalSpec
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
  principalKind:
    name: principalKind
    description: OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions;
      a CONTACT is modeled by someone else's Realm and has neither.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: PrincipalKind
    required: true
  displayName:
    name: displayName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    - TerminologyEntry
    range: string
    required: true
    pattern: ^.{1,}$
  personalSpaceRef:
    name: personalSpaceRef
    description: Present only for OWNER and MEMBER. A CONTACT has no login or workspace
      here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    - ProjectPersonalSpaceBinding
    range: ContractReference
    inlined: true
  consentState:
    name: consentState
    description: NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the
      Realm. For a CONTACT, the Realm's own record of whether that person agreed to
      being modeled -- never proof of consent, only a claim the Realm makes.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: ConsentState
    required: true
  channelBindingRefs:
    name: channelBindingRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: Identifier
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: PrincipalSpec
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
    rank: 1000
    owner: PrincipalSpec
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
  principalKind:
    name: principalKind
    description: OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions;
      a CONTACT is modeled by someone else's Realm and has neither.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: PrincipalKind
    required: true
  displayName:
    name: displayName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    - TerminologyEntry
    range: string
    required: true
    pattern: ^.{1,}$
  personalSpaceRef:
    name: personalSpaceRef
    description: Present only for OWNER and MEMBER. A CONTACT has no login or workspace
      here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    - ProjectPersonalSpaceBinding
    range: ContractReference
    inlined: true
  consentState:
    name: consentState
    description: NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the
      Realm. For a CONTACT, the Realm's own record of whether that person agreed to
      being modeled -- never proof of consent, only a claim the Realm makes.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: ConsentState
    required: true
  channelBindingRefs:
    name: channelBindingRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PrincipalSpec
    domain_of:
    - PrincipalSpec
    range: Identifier
    multivalued: true

```
</details></div>