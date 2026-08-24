---
search:
  boost: 10.0
---

# Class: ProviderQuotaObservation


_Observed quota and rate limit status from an upstream provider._



<div data-search-exclude markdown="1">



URI: [jumo:ProviderQuotaObservation](https://jumo.dev/schemas/jumo-v1/ProviderQuotaObservation)





```mermaid
 classDiagram
    class ProviderQuotaObservation
    click ProviderQuotaObservation href "../ProviderQuotaObservation/"
      ProviderQuotaObservation : capturedAt

      ProviderQuotaObservation : confidence

      ProviderQuotaObservation : kind

      ProviderQuotaObservation : limit

      ProviderQuotaObservation : provenance

      ProviderQuotaObservation : remaining

      ProviderQuotaObservation : resetAt

      ProviderQuotaObservation : scope

      ProviderQuotaObservation : staleAt

      ProviderQuotaObservation : status





        ProviderQuotaObservation --> "1" QuotaStatus : status
        click QuotaStatus href "../QuotaStatus/"



      ProviderQuotaObservation : unit


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [kind](kind.md) | 1 <br/> [String](String.md) |  | direct |
| [scope](scope.md) | 1 <br/> [String](String.md) |  | direct |
| [limit](limit.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [remaining](remaining.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [unit](unit.md) | 1 <br/> [String](String.md) |  | direct |
| [capturedAt](capturedAt.md) | 1 <br/> [String](String.md) |  | direct |
| [staleAt](staleAt.md) | 0..1 <br/> [String](String.md) |  | direct |
| [resetAt](resetAt.md) | 0..1 <br/> [String](String.md) |  | direct |
| [provenance](provenance.md) | 1 <br/> [String](String.md) |  | direct |
| [confidence](confidence.md) | 0..1 <br/> [Float](Float.md) |  | direct |
| [status](status.md) | 1 <br/> [QuotaStatus](QuotaStatus.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | CONTRACT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ProviderQuotaObservation |
| native | jumo:ProviderQuotaObservation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProviderQuotaObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
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
description: Observed quota and rate limit status from an upstream provider.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  kind:
    name: kind
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
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
    range: string
    required: true
  scope:
    name: scope
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - PolicySetSpec
    - ProviderQuotaObservation
    range: string
    required: true
  limit:
    name: limit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: float
  remaining:
    name: remaining
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: float
  unit:
    name: unit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
    required: true
  capturedAt:
    name: capturedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - CliUsageObservation
    - ProviderQuotaObservation
    - EvidenceRecord
    range: string
    required: true
  staleAt:
    name: staleAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
  resetAt:
    name: resetAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
  provenance:
    name: provenance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    - AppraisalDimensions
    range: string
    required: true
  confidence:
    name: confidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - AttentionItemSpec
    - ProviderQuotaObservation
    - McpCatalogFieldCandidate
    range: float
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: QuotaStatus
    required: true

```
</details>

### Induced

<details>
```yaml
name: ProviderQuotaObservation
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
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
description: Observed quota and rate limit status from an upstream provider.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  kind:
    name: kind
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
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
    range: string
    required: true
  scope:
    name: scope
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - PolicySetSpec
    - ProviderQuotaObservation
    range: string
    required: true
  limit:
    name: limit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: float
  remaining:
    name: remaining
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: float
  unit:
    name: unit
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
    required: true
  capturedAt:
    name: capturedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - CliUsageObservation
    - ProviderQuotaObservation
    - EvidenceRecord
    range: string
    required: true
  staleAt:
    name: staleAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
  resetAt:
    name: resetAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    range: string
  provenance:
    name: provenance
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProviderQuotaObservation
    domain_of:
    - ProviderQuotaObservation
    - AppraisalDimensions
    range: string
    required: true
  confidence:
    name: confidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - AttentionItemSpec
    - ProviderQuotaObservation
    - McpCatalogFieldCandidate
    range: float
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProviderQuotaObservation
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: QuotaStatus
    required: true

```
</details></div>