---
search:
  boost: 10.0
---

# Class: RoleBearer


_Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema. LinkML has no native discriminated union at the attribute level; modeled as one class with branch fields optional. Which fields are required for which `kind` moves to Rego, same disposition as every other conditional-requiredness invariant here._



<div data-search-exclude markdown="1">



URI: [jumo:RoleBearer](https://jumo.dev/schemas/jumo-v1/RoleBearer)





```mermaid
 classDiagram
    class RoleBearer
    click RoleBearer href "../RoleBearer/"
      RoleBearer : agentDefinitionRef





        RoleBearer --> "0..1" ContractReference : agentDefinitionRef
        click ContractReference href "../ContractReference/"



      RoleBearer : defaultWorkerRequirementProfileRef





        RoleBearer --> "0..1" ContractReference : defaultWorkerRequirementProfileRef
        click ContractReference href "../ContractReference/"



      RoleBearer : federatedPeerRef





        RoleBearer --> "0..1" ContractReference : federatedPeerRef
        click ContractReference href "../ContractReference/"



      RoleBearer : kind





        RoleBearer --> "1" BearerKind : kind
        click BearerKind href "../BearerKind/"



      RoleBearer : principalRef





        RoleBearer --> "0..1" ContractReference : principalRef
        click ContractReference href "../ContractReference/"



      RoleBearer : remoteRoleKey


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [kind](kind.md) | 1 <br/> [BearerKind](BearerKind.md) |  | direct |
| [principalRef](principalRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Required when kind is HUMAN | direct |
| [agentDefinitionRef](agentDefinitionRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Required when kind is AGENT | direct |
| [defaultWorkerRequirementProfileRef](defaultWorkerRequirementProfileRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Optional, only meaningful when kind is AGENT | direct |
| [federatedPeerRef](federatedPeerRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Required when kind is FEDERATED_PEER | direct |
| [remoteRoleKey](remoteRoleKey.md) | 0..1 <br/> [String](String.md) | Optional remote role identifier in the peer realm | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RoleAssignmentSpec](RoleAssignmentSpec.md) | [bearer](bearer.md) | range | [RoleBearer](RoleBearer.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | CONTRACT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |
| jumo.composition | ADDITIVE |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:RoleBearer |
| native | jumo:RoleBearer |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RoleBearer
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: CONTRACT
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
  jumo.composition:
    tag: jumo.composition
    value: ADDITIVE
description: Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema.
  LinkML has no native discriminated union at the attribute level; modeled as one
  class with branch fields optional. Which fields are required for which `kind` moves
  to Rego, same disposition as every other conditional-requiredness invariant here.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  kind:
    name: kind
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RoleBearer
    domain_of:
    - ContractReference
    - Principal
    - PrincipalIdentityBinding
    - PrincipleSet
    - Project
    - RealmTemplate
    - JumoKit
    - KitBinding
    - KitLock
    - KitReleaseCertification
    - OfferingSpec
    - RoleDefinition
    - AgentDefinition
    - RoleAssignment
    - RoleBearer
    - TeamSpec
    - CoordinationProfile
    - RoutingEligibility
    - RoleLifecyclePolicy
    - OrganizationTemplate
    - ChiefOfStaffProfile
    - AdvisorProfile
    - PersonalSpace
    - Preferences
    - SelfDescription
    - SelfDescriptionSubject
    - OrganizationSpec
    - Organization
    - OrganizationAccessBinding
    - OrganizationEnrollmentPolicy
    - OrganizationAuditRetentionPolicy
    - OrganizationRetentionHold
    - OrganizationPublicationPolicy
    - RealmPublication
    - WorkOrder
    - SolicitationContract
    - EngagementMethod
    - Practice
    - CapabilityProfile
    - WorkerRequirementProfile
    - GoldenTaskSet
    - PromptTemplate
    - ResourceBudget
    - AssistedJourney
    - JourneyVerificationSpec
    - AssistedJourneyReferenceCheck
    - DocumentTemplate
    - ActionCapabilitySet
    - PolicySet
    - ImprovementLoop
    - ImprovementRecommendation
    - AttentionItem
    - ControlCatalog
    - ComplianceProfile
    - EvidenceProfile
    - ProcessSpec
    - ProcessStep
    - ExecutionMachine
    - MachineHostDefinition
    - MachineAdminPlaybook
    - MachineRuntimeInstallation
    - CliToolDefinition
    - CliRelease
    - ProviderQuotaObservation
    - McpRegistrySource
    - McpRegistrySourceBinding
    - ConnectorDefinition
    - ConnectorAppraisal
    - McpBundle
    - RemoteMcpService
    - RemoteMcpAppraisal
    - ExecutionCell
    - SecretBinding
    - FederatedPeer
    - FederationProfile
    - ProviderAccount
    - ProviderPlatform
    - ProviderQuotaWindow
    - WorkerSubstrate
    - ConnectorIntegration
    - ConnectorPackage
    - ConnectorPackageCertification
    - OAuthClientBinding
    - InterfaceSurface
    - ThemePack
    - VocabularySet
    - ApiSurface
    - ProjectionSpec
    range: BearerKind
    required: true
  principalRef:
    name: principalRef
    description: Required when kind is HUMAN.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RoleBearer
    domain_of:
    - PrincipalIdentityBindingSpec
    - RoleBearer
    - ConnectorSessionBinding
    range: ContractReference
    inlined: true
  agentDefinitionRef:
    name: agentDefinitionRef
    description: Required when kind is AGENT.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    - EngagementMethodSpec
    - PromptTemplateSpec
    range: ContractReference
    inlined: true
  defaultWorkerRequirementProfileRef:
    name: defaultWorkerRequirementProfileRef
    description: Optional, only meaningful when kind is AGENT.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: ContractReference
    inlined: true
  federatedPeerRef:
    name: federatedPeerRef
    description: Required when kind is FEDERATED_PEER. Names the FederatedPeer contract.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: ContractReference
    inlined: true
  remoteRoleKey:
    name: remoteRoleKey
    description: Optional remote role identifier in the peer realm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: string

```
</details>

### Induced

<details>
```yaml
name: RoleBearer
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: CONTRACT
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
  jumo.composition:
    tag: jumo.composition
    value: ADDITIVE
description: Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema.
  LinkML has no native discriminated union at the attribute level; modeled as one
  class with branch fields optional. Which fields are required for which `kind` moves
  to Rego, same disposition as every other conditional-requiredness invariant here.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  kind:
    name: kind
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RoleBearer
    domain_of:
    - ContractReference
    - Principal
    - PrincipalIdentityBinding
    - PrincipleSet
    - Project
    - RealmTemplate
    - JumoKit
    - KitBinding
    - KitLock
    - KitReleaseCertification
    - OfferingSpec
    - RoleDefinition
    - AgentDefinition
    - RoleAssignment
    - RoleBearer
    - TeamSpec
    - CoordinationProfile
    - RoutingEligibility
    - RoleLifecyclePolicy
    - OrganizationTemplate
    - ChiefOfStaffProfile
    - AdvisorProfile
    - PersonalSpace
    - Preferences
    - SelfDescription
    - SelfDescriptionSubject
    - OrganizationSpec
    - Organization
    - OrganizationAccessBinding
    - OrganizationEnrollmentPolicy
    - OrganizationAuditRetentionPolicy
    - OrganizationRetentionHold
    - OrganizationPublicationPolicy
    - RealmPublication
    - WorkOrder
    - SolicitationContract
    - EngagementMethod
    - Practice
    - CapabilityProfile
    - WorkerRequirementProfile
    - GoldenTaskSet
    - PromptTemplate
    - ResourceBudget
    - AssistedJourney
    - JourneyVerificationSpec
    - AssistedJourneyReferenceCheck
    - DocumentTemplate
    - ActionCapabilitySet
    - PolicySet
    - ImprovementLoop
    - ImprovementRecommendation
    - AttentionItem
    - ControlCatalog
    - ComplianceProfile
    - EvidenceProfile
    - ProcessSpec
    - ProcessStep
    - ExecutionMachine
    - MachineHostDefinition
    - MachineAdminPlaybook
    - MachineRuntimeInstallation
    - CliToolDefinition
    - CliRelease
    - ProviderQuotaObservation
    - McpRegistrySource
    - McpRegistrySourceBinding
    - ConnectorDefinition
    - ConnectorAppraisal
    - McpBundle
    - RemoteMcpService
    - RemoteMcpAppraisal
    - ExecutionCell
    - SecretBinding
    - FederatedPeer
    - FederationProfile
    - ProviderAccount
    - ProviderPlatform
    - ProviderQuotaWindow
    - WorkerSubstrate
    - ConnectorIntegration
    - ConnectorPackage
    - ConnectorPackageCertification
    - OAuthClientBinding
    - InterfaceSurface
    - ThemePack
    - VocabularySet
    - ApiSurface
    - ProjectionSpec
    range: BearerKind
    required: true
  principalRef:
    name: principalRef
    description: Required when kind is HUMAN.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RoleBearer
    domain_of:
    - PrincipalIdentityBindingSpec
    - RoleBearer
    - ConnectorSessionBinding
    range: ContractReference
    inlined: true
  agentDefinitionRef:
    name: agentDefinitionRef
    description: Required when kind is AGENT.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    - EngagementMethodSpec
    - PromptTemplateSpec
    range: ContractReference
    inlined: true
  defaultWorkerRequirementProfileRef:
    name: defaultWorkerRequirementProfileRef
    description: Optional, only meaningful when kind is AGENT.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: ContractReference
    inlined: true
  federatedPeerRef:
    name: federatedPeerRef
    description: Required when kind is FEDERATED_PEER. Names the FederatedPeer contract.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: ContractReference
    inlined: true
  remoteRoleKey:
    name: remoteRoleKey
    description: Optional remote role identifier in the peer realm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RoleBearer
    domain_of:
    - RoleBearer
    range: string

```
</details></div>