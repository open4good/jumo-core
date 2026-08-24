---
search:
  boost: 10.0
---

# Class: CoordinationProfileSpec

<div data-search-exclude markdown="1">



URI: [jumo:CoordinationProfileSpec](https://jumo.dev/schemas/jumo-v1/CoordinationProfileSpec)





```mermaid
 classDiagram
    class CoordinationProfileSpec
    click CoordinationProfileSpec href "../CoordinationProfileSpec/"
      CoordinationProfileSpec : assuranceLevel





        CoordinationProfileSpec --> "1" AssuranceLevel : assuranceLevel
        click AssuranceLevel href "../AssuranceLevel/"



      CoordinationProfileSpec : maxRing





        CoordinationProfileSpec --> "1" Ring : maxRing
        click Ring href "../Ring/"



      CoordinationProfileSpec : mechanisms





        CoordinationProfileSpec --> "1..*" CoordinationMechanismBinding : mechanisms
        click CoordinationMechanismBinding href "../CoordinationMechanismBinding/"



      CoordinationProfileSpec : ownerRealm

      CoordinationProfileSpec : preconditions

      CoordinationProfileSpec : profileName





        CoordinationProfileSpec --> "1" CoordinationProfileName : profileName
        click CoordinationProfileName href "../CoordinationProfileName/"



      CoordinationProfileSpec : reversibility





        CoordinationProfileSpec --> "1" Reversibility : reversibility
        click Reversibility href "../Reversibility/"



      CoordinationProfileSpec : rhythm


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [profileName](profileName.md) | 1 <br/> [CoordinationProfileName](CoordinationProfileName.md) |  | direct |
| [reversibility](reversibility.md) | 1 <br/> [Reversibility](Reversibility.md) |  | direct |
| [maxRing](maxRing.md) | 1 <br/> [Ring](Ring.md) |  | direct |
| [assuranceLevel](assuranceLevel.md) | 1 <br/> [AssuranceLevel](AssuranceLevel.md) |  | direct |
| [mechanisms](mechanisms.md) | 1..* <br/> [CoordinationMechanismBinding](CoordinationMechanismBinding.md) |  | direct |
| [rhythm](rhythm.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |
| [preconditions](preconditions.md) | * <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [CoordinationProfile](CoordinationProfile.md) | [spec](spec.md) | range | [CoordinationProfileSpec](CoordinationProfileSpec.md) |












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
| self | jumo:CoordinationProfileSpec |
| native | jumo:CoordinationProfileSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: CoordinationProfileSpec
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
    owner: CoordinationProfileSpec
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
  profileName:
    name: profileName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: CoordinationProfileName
    required: true
  reversibility:
    name: reversibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Reversibility
    required: true
  maxRing:
    name: maxRing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Ring
    required: true
  assuranceLevel:
    name: assuranceLevel
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: AssuranceLevel
    required: true
  mechanisms:
    name: mechanisms
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CoordinationProfileSpec
    domain_of:
    - TeamCoordination
    - CoordinationProfileSpec
    range: CoordinationMechanismBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  rhythm:
    name: rhythm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Duration
  preconditions:
    name: preconditions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: string
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: CoordinationProfileSpec
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
    owner: CoordinationProfileSpec
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
  profileName:
    name: profileName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: CoordinationProfileName
    required: true
  reversibility:
    name: reversibility
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Reversibility
    required: true
  maxRing:
    name: maxRing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Ring
    required: true
  assuranceLevel:
    name: assuranceLevel
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: AssuranceLevel
    required: true
  mechanisms:
    name: mechanisms
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: CoordinationProfileSpec
    domain_of:
    - TeamCoordination
    - CoordinationProfileSpec
    range: CoordinationMechanismBinding
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  rhythm:
    name: rhythm
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: Duration
  preconditions:
    name: preconditions
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: CoordinationProfileSpec
    domain_of:
    - CoordinationProfileSpec
    range: string
    multivalued: true

```
</details></div>