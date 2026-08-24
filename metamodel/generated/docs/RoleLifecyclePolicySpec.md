---
search:
  boost: 10.0
---

# Class: RoleLifecyclePolicySpec

<div data-search-exclude markdown="1">



URI: [jumo:RoleLifecyclePolicySpec](https://jumo.dev/schemas/jumo-v1/RoleLifecyclePolicySpec)





```mermaid
 classDiagram
    class RoleLifecyclePolicySpec
    click RoleLifecyclePolicySpec href "../RoleLifecyclePolicySpec/"
      RoleLifecyclePolicySpec : boundedTrialEpisodesRequired

      RoleLifecyclePolicySpec : evaluationCriteria

      RoleLifecyclePolicySpec : maxTrialDurationDays

      RoleLifecyclePolicySpec : ownerRealm

      RoleLifecyclePolicySpec : shadowEpisodesRequired


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [shadowEpisodesRequired](shadowEpisodesRequired.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [boundedTrialEpisodesRequired](boundedTrialEpisodesRequired.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [maxTrialDurationDays](maxTrialDurationDays.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [evaluationCriteria](evaluationCriteria.md) | 1..* <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RoleLifecyclePolicy](RoleLifecyclePolicy.md) | [spec](spec.md) | range | [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |












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
| self | jumo:RoleLifecyclePolicySpec |
| native | jumo:RoleLifecyclePolicySpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RoleLifecyclePolicySpec
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
    owner: RoleLifecyclePolicySpec
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
  shadowEpisodesRequired:
    name: shadowEpisodesRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 0
  boundedTrialEpisodesRequired:
    name: boundedTrialEpisodesRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 1
  maxTrialDurationDays:
    name: maxTrialDurationDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 1
  evaluationCriteria:
    name: evaluationCriteria
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: string
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: RoleLifecyclePolicySpec
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
    owner: RoleLifecyclePolicySpec
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
  shadowEpisodesRequired:
    name: shadowEpisodesRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 0
  boundedTrialEpisodesRequired:
    name: boundedTrialEpisodesRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 1
  maxTrialDurationDays:
    name: maxTrialDurationDays
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: integer
    required: true
    minimum_value: 1
  evaluationCriteria:
    name: evaluationCriteria
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleLifecyclePolicySpec
    domain_of:
    - RoleLifecyclePolicySpec
    range: string
    required: true
    multivalued: true
    minimum_cardinality: 1

```
</details></div>