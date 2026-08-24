---
search:
  boost: 5.0
---

# Slot: spec

<div data-search-exclude markdown="1">



URI: [jumo:spec](https://jumo.dev/schemas/jumo-v1/spec)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [Principal](Principal.md) | A person the Realm knows about: its owner, a Realm member with a personal spa... |  no  |
| [PrincipalIdentityBinding](PrincipalIdentityBinding.md) | Explicit Realm-local binding between a member or owner Principal and its OIDC... |  no  |
| [PrincipleSet](PrincipleSet.md) | Judgement heuristics |  no  |
| [Project](Project.md) | A governed body of work declared in a Realm control repository |  no  |
| [RealmTemplate](RealmTemplate.md) | A Realm is a governance, privacy and security boundary |  no  |
| [JumoKit](JumoKit.md) | Root manifest for one portable Jumo Kit repository |  no  |
| [KitBinding](KitBinding.md) | Realm-local, closed binding for one Jumo Kit release |  no  |
| [KitLock](KitLock.md) | Rendered provenance for one admitted Jumo Kit |  no  |
| [KitReleaseCertification](KitReleaseCertification.md) | Portable independent review of an exact Jumo Kit release and its executable m... |  no  |
| [OfferingSpec](OfferingSpec.md) | Hypothesis-level managed-service offer for a client-owned Solo deployment |  no  |
| [RoleDefinition](RoleDefinition.md) | A stable Realm-owned acting role carrying a mission |  no  |
| [AgentDefinition](AgentDefinition.md) | Reusable, portable agent behavior |  no  |
| [RoleAssignment](RoleAssignment.md) | Git-declared bearer of one stable role |  no  |
| [TeamSpec](TeamSpec.md) | A Realm-owned composition of roles and nested teams |  no  |
| [CoordinationProfile](CoordinationProfile.md) | A named, reusable coordination profile: authorized mechanisms, target depende... |  no  |
| [RoutingEligibility](RoutingEligibility.md) | A desired routing eligibility relation between roles or teams and a Project |  no  |
| [RoleLifecyclePolicy](RoleLifecyclePolicy.md) | Onboarding policy and evaluation criteria for roles |  no  |
| [OrganizationTemplate](OrganizationTemplate.md) | Parametric package of roles, teams, profiles, and lifecycle |  no  |
| [ChiefOfStaffProfile](ChiefOfStaffProfile.md) | Configures a Chief-of-Staff role's attention loop and work disposition |  no  |
| [AdvisorProfile](AdvisorProfile.md) | A stable role's declared, contextual ways of being solicited |  no  |
| [PersonalSpace](PersonalSpace.md) | Mandatory personal space declaration for a human or agent principal within a ... |  no  |
| [Preferences](Preferences.md) | User or agent preferences attached to a PersonalSpace |  no  |
| [SelfDescription](SelfDescription.md) | How a Project or agent explains itself |  no  |
| [OrganizationSpec](OrganizationSpec.md) | A named organization of roles for a recurring mission (docs/concepts/position... |  no  |
| [Organization](Organization.md) | A tenant boundary with its own Git contract source |  no  |
| [OrganizationAccessBinding](OrganizationAccessBinding.md) | Explicit Git binding for Organization owners, administrators, and auditors |  no  |
| [OrganizationEnrollmentPolicy](OrganizationEnrollmentPolicy.md) | Approved OIDC admission rule for derived MEMBER status and a bounded onboardi... |  no  |
| [OrganizationAuditRetentionPolicy](OrganizationAuditRetentionPolicy.md) | Default retention for terminal recognized-state history in one Organization |  no  |
| [OrganizationRetentionHold](OrganizationRetentionHold.md) | A time-bounded, auditable Organization-wide pause of terminal-history purge |  no  |
| [OrganizationPublicationPolicy](OrganizationPublicationPolicy.md) | Organization-level publication policy setting allowed interoperability adapte... |  no  |
| [RealmPublication](RealmPublication.md) | Governed public interoperability exposition under /u/{handle} for a Realm |  no  |
| [WorkOrder](WorkOrder.md) | One unit of dispatched work, in Git |  no  |
| [SolicitationContract](SolicitationContract.md) | The only way one Project or Realm may solicit another (canonical decision 25) |  no  |
| [EngagementMethod](EngagementMethod.md) | A reusable, Git-governed method for a Realm-scoped Matter |  no  |
| [Practice](Practice.md) | A recurring governed invocation |  no  |
| [CapabilityProfile](CapabilityProfile.md) | A human-facing named preset over a WorkerRequirementProfile vector |  no  |
| [WorkerRequirementProfile](WorkerRequirementProfile.md) | A multi-dimensional task requirement vector used to select an eligible runtim... |  no  |
| [GoldenTaskSet](GoldenTaskSet.md) |  |  no  |
| [PromptTemplate](PromptTemplate.md) | A prompt is Ring 2 material: reviewable, versioned agent behavior (ADR-0008) |  no  |
| [ResourceBudget](ResourceBudget.md) | Per-Episode frugality limits |  no  |
| [AssistedJourney](AssistedJourney.md) | Declaration of a multi-turn governed assisted onboarding journey |  no  |
| [DocumentTemplate](DocumentTemplate.md) | A YAML document with ${placeholder} scalars, rendered into the contract a jou... |  no  |
| [ActionCapabilitySet](ActionCapabilitySet.md) | The security kernel |  no  |
| [PolicySet](PolicySet.md) | Executable authorization |  no  |
| [ImprovementLoop](ImprovementLoop.md) | How a Project learns from its own finished work |  no  |
| [ImprovementRecommendation](ImprovementRecommendation.md) | One actionable finding against a Project's corpus, in Git |  no  |
| [AttentionItem](AttentionItem.md) | The human-facing routing projection of something that wants a person |  no  |
| [ControlCatalog](ControlCatalog.md) | Internal controls, reusable across ComplianceProfiles (docs/concepts/position... |  no  |
| [ComplianceProfile](ComplianceProfile.md) | A named referential (edition, official URI) and its mappings to a ControlCata... |  no  |
| [EvidenceProfile](EvidenceProfile.md) | The type, source, freshness, independence, and retention an assessment's evid... |  no  |
| [ProcessSpec](ProcessSpec.md) | A durable process: a graph of typed steps and flows, compiled to a Temporal W... |  no  |
| [ExecutionMachine](ExecutionMachine.md) | Durable Git contract defining an execution machine bound to a single Realm |  no  |
| [MachineHostDefinition](MachineHostDefinition.md) | Durable Git contract defining the host environment and driver for a machine |  no  |
| [MachineAdminPlaybook](MachineAdminPlaybook.md) | Git-governed allowlisted Ansible playbook definition for machine administrati... |  no  |
| [CliToolDefinition](CliToolDefinition.md) | Durable Git contract declaring an AI CLI tool available for execution |  no  |
| [CliRelease](CliRelease.md) | Durable Git contract pinning an immutable OCI container release for a CLI too... |  no  |
| [McpRegistrySource](McpRegistrySource.md) | Platform-scoped configuration for a bounded registry adapter |  no  |
| [McpRegistrySourceBinding](McpRegistrySourceBinding.md) | Realm-owned declaration binding a Platform McpRegistrySource to the Execution... |  no  |
| [ConnectorDefinition](ConnectorDefinition.md) | A Realm-owned catalog entry for an external system boundary |  no  |
| [ConnectorAppraisal](ConnectorAppraisal.md) | The reviewed judgement that lets an McpBundle leave DECLARED |  no  |
| [McpBundle](McpBundle.md) | A reviewed, deployable MCP package |  no  |
| [RemoteMcpService](RemoteMcpService.md) | A Realm-local remote MCP endpoint |  no  |
| [RemoteMcpAppraisal](RemoteMcpAppraisal.md) |  |  no  |
| [ExecutionCell](ExecutionCell.md) | A Realm-bound execution cell boundary that manages compute placement, local c... |  no  |
| [SecretBinding](SecretBinding.md) | A Git-declared reference to runtime secret material |  no  |
| [FederatedPeer](FederatedPeer.md) | Desired bilateral Jumo peer configuration |  no  |
| [FederationProfile](FederationProfile.md) | A negotiated, namespaced protocol profile |  no  |
| [ProviderAccount](ProviderAccount.md) | One model or CLI account and the window its quota renews in |  no  |
| [ProviderPlatform](ProviderPlatform.md) | The declared catalog entry a ProviderAccount is opened against -- wire protoc... |  no  |
| [WorkerSubstrate](WorkerSubstrate.md) | Realm-owned declaration of a constrained worker runtime |  no  |
| [ConnectorIntegration](ConnectorIntegration.md) | Durable Git contract grouping related connectors (e |  no  |
| [ConnectorPackage](ConnectorPackage.md) | Platform-only Git contract manifest defining a complete connector package und... |  no  |
| [ConnectorPackageCertification](ConnectorPackageCertification.md) | Platform-only technical certification of an exact ConnectorPackage build |  no  |
| [OAuthClientBinding](OAuthClientBinding.md) | Durable Git contract binding an OAuth client registration to a Realm |  no  |
| [InterfaceSurface](InterfaceSurface.md) |  |  no  |
| [ThemePack](ThemePack.md) | Naming, voice and visual presentation |  no  |
| [VocabularySet](VocabularySet.md) | Generated concept glossary |  no  |
| [ApiSurface](ApiSurface.md) | Governed API surface contract mapping routes, verbs, and audiences to SchemaB... |  no  |
| [ProjectionSpec](ProjectionSpec.md) | A named view of one generated LinkML class |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [Principal](Principal.md), [PrincipalIdentityBinding](PrincipalIdentityBinding.md), [PrincipleSet](PrincipleSet.md), [Project](Project.md), [RealmTemplate](RealmTemplate.md), [JumoKit](JumoKit.md), [KitBinding](KitBinding.md), [KitLock](KitLock.md), [KitReleaseCertification](KitReleaseCertification.md), [OfferingSpec](OfferingSpec.md), [RoleDefinition](RoleDefinition.md), [AgentDefinition](AgentDefinition.md), [RoleAssignment](RoleAssignment.md), [TeamSpec](TeamSpec.md), [CoordinationProfile](CoordinationProfile.md), [RoutingEligibility](RoutingEligibility.md), [RoleLifecyclePolicy](RoleLifecyclePolicy.md), [OrganizationTemplate](OrganizationTemplate.md), [ChiefOfStaffProfile](ChiefOfStaffProfile.md), [AdvisorProfile](AdvisorProfile.md), [PersonalSpace](PersonalSpace.md), [Preferences](Preferences.md), [SelfDescription](SelfDescription.md), [OrganizationSpec](OrganizationSpec.md), [Organization](Organization.md), [OrganizationAccessBinding](OrganizationAccessBinding.md), [OrganizationEnrollmentPolicy](OrganizationEnrollmentPolicy.md), [OrganizationAuditRetentionPolicy](OrganizationAuditRetentionPolicy.md), [OrganizationRetentionHold](OrganizationRetentionHold.md), [OrganizationPublicationPolicy](OrganizationPublicationPolicy.md), [RealmPublication](RealmPublication.md), [WorkOrder](WorkOrder.md), [SolicitationContract](SolicitationContract.md), [EngagementMethod](EngagementMethod.md), [Practice](Practice.md), [CapabilityProfile](CapabilityProfile.md), [WorkerRequirementProfile](WorkerRequirementProfile.md), [GoldenTaskSet](GoldenTaskSet.md), [PromptTemplate](PromptTemplate.md), [ResourceBudget](ResourceBudget.md), [AssistedJourney](AssistedJourney.md), [DocumentTemplate](DocumentTemplate.md), [ActionCapabilitySet](ActionCapabilitySet.md), [PolicySet](PolicySet.md), [ImprovementLoop](ImprovementLoop.md), [ImprovementRecommendation](ImprovementRecommendation.md), [AttentionItem](AttentionItem.md), [ControlCatalog](ControlCatalog.md), [ComplianceProfile](ComplianceProfile.md), [EvidenceProfile](EvidenceProfile.md), [ProcessSpec](ProcessSpec.md), [ExecutionMachine](ExecutionMachine.md), [MachineHostDefinition](MachineHostDefinition.md), [MachineAdminPlaybook](MachineAdminPlaybook.md), [CliToolDefinition](CliToolDefinition.md), [CliRelease](CliRelease.md), [McpRegistrySource](McpRegistrySource.md), [McpRegistrySourceBinding](McpRegistrySourceBinding.md), [ConnectorDefinition](ConnectorDefinition.md), [ConnectorAppraisal](ConnectorAppraisal.md), [McpBundle](McpBundle.md), [RemoteMcpService](RemoteMcpService.md), [RemoteMcpAppraisal](RemoteMcpAppraisal.md), [ExecutionCell](ExecutionCell.md), [SecretBinding](SecretBinding.md), [FederatedPeer](FederatedPeer.md), [FederationProfile](FederationProfile.md), [ProviderAccount](ProviderAccount.md), [ProviderPlatform](ProviderPlatform.md), [WorkerSubstrate](WorkerSubstrate.md), [ConnectorIntegration](ConnectorIntegration.md), [ConnectorPackage](ConnectorPackage.md), [ConnectorPackageCertification](ConnectorPackageCertification.md), [OAuthClientBinding](OAuthClientBinding.md), [InterfaceSurface](InterfaceSurface.md), [ThemePack](ThemePack.md), [VocabularySet](VocabularySet.md), [ApiSurface](ApiSurface.md), [ProjectionSpec](ProjectionSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:spec |
| native | jumo:spec |




## LinkML Source

<details>
```yaml
name: spec
domain_of:
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
- ExecutionMachine
- MachineHostDefinition
- MachineAdminPlaybook
- CliToolDefinition
- CliRelease
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

```
</details></div>