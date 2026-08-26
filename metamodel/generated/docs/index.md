# jumo_v1

Jumo V1 metamodel root. Single normative source (alignment plan decision 1); JSON Schema, Java records, OpenAPI, GraphQL SDL, OWL, SHACL, JSON-LD context, SQL DDL, and documentation are all generated from this schema and its imported modules (LOT 3). Nothing under metamodel/generated/ or .jumo/schemas/ is hand-edited once LOT 4 cuts the corpus over -- this file and its modules are the only hand-written source of truth for contract shape.
Modules, by subject matter: core (shared types/enums/Metadata, DocumentFrontMatter, Principal, PrincipleSet), organization (roles, teams, coordination, personal spaces, OrganizationSpec), work (work orders, solicitation, methods, practices, worker selection), governance (capability security kernel, policy, improvement loop, attention, certification by design), execution (ProcessSpec), integration (connectors, MCP, provider accounts, worker substrates, federation), interface (cockpit surfaces, theming, vocabulary), portability (Project, RealmTemplate, Jumo Kit triptych, OfferingSpec), projection (ProjectionSpec: named views of a generated class).

URI: https://jumo.dev/schemas/jumo-v1

Name: jumo_v1



## Classes

| Class | Description |
| --- | --- |
| [AcceptanceCriterion](AcceptanceCriterion.md) |  |
| [AcknowledgementPolicy](AcknowledgementPolicy.md) |  |
| [ActionCapability](ActionCapability.md) |  |
| [ActionCapabilitySet](ActionCapabilitySet.md) | The security kernel |
| [ActionCapabilitySetSpec](ActionCapabilitySetSpec.md) |  |
| [AdvisorDialogueOption](AdvisorDialogueOption.md) | One named effort option for a role |
| [AdvisorProfile](AdvisorProfile.md) | A stable role's declared, contextual ways of being solicited |
| [AdvisorProfileSpec](AdvisorProfileSpec.md) |  |
| [AgentCard](AgentCard.md) | A2A v1 |
| [AgentCardSkill](AgentCardSkill.md) |  |
| [AgentDefinition](AgentDefinition.md) | Reusable, portable agent behavior |
| [AgentDefinitionSpec](AgentDefinitionSpec.md) |  |
| [AllowedRequest](AllowedRequest.md) |  |
| [ApiOperation](ApiOperation.md) | Typed operation declaration in an API surface contract |
| [ApiProblem](ApiProblem.md) | RFC 9457 compliant problem details model for API errors without unconstrained... |
| [ApiResponseBinding](ApiResponseBinding.md) | Response schema binding for a specific HTTP status code |
| [ApiSurface](ApiSurface.md) | Governed API surface contract mapping routes, verbs, and audiences to SchemaB... |
| [ApiSurfaceSpec](ApiSurfaceSpec.md) | Specification of an ApiSurface contract |
| [AppraisalDimension](AppraisalDimension.md) |  |
| [AppraisalDimensions](AppraisalDimensions.md) | Four questions asked of every submission, separate because they fail independ... |
| [ApprovalSignal](ApprovalSignal.md) | Minimal user/message signal envelope; no approval decision is inferred from i... |
| [AssistedJourney](AssistedJourney.md) | Declaration of a multi-turn governed assisted onboarding journey |
| [AssistedJourneyCollectionProjection](AssistedJourneyCollectionProjection.md) |  |
| [AssistedJourneyEmission](AssistedJourneyEmission.md) | The declarative replacement for a per-journey emission branch |
| [AssistedJourneyEmittedIdentifier](AssistedJourneyEmittedIdentifier.md) | How the emitted document's identifier is derived from the run, always by slug... |
| [AssistedJourneyFieldCondition](AssistedJourneyFieldCondition.md) | One field of the emitted document and the collected value that decides whethe... |
| [AssistedJourneyFieldDefault](AssistedJourneyFieldDefault.md) |  |
| [AssistedJourneyFieldValidation](AssistedJourneyFieldValidation.md) |  |
| [AssistedJourneyReferenceCheck](AssistedJourneyReferenceCheck.md) |  |
| [AssistedJourneyRequiredField](AssistedJourneyRequiredField.md) |  |
| [AssistedJourneyRoutingEligibilityCheck](AssistedJourneyRoutingEligibilityCheck.md) |  |
| [AssistedJourneySpec](AssistedJourneySpec.md) |  |
| [AssistedJourneyStep](AssistedJourneyStep.md) | stepKind/projectionRef/processRef are additive: the model-driven rendering en... |
| [AttentionDecisionOption](AttentionDecisionOption.md) |  |
| [AttentionItem](AttentionItem.md) | The human-facing routing projection of something that wants a person |
| [AttentionItemSpec](AttentionItemSpec.md) |  |
| [AttentionSource](AttentionSource.md) |  |
| [AttentionTarget](AttentionTarget.md) |  |
| [BudgetLimits](BudgetLimits.md) |  |
| [CapabilityProfile](CapabilityProfile.md) | A human-facing named preset over a WorkerRequirementProfile vector |
| [CapabilityProfileSpec](CapabilityProfileSpec.md) |  |
| [ChangeProposalRef](ChangeProposalRef.md) | Narrow hash-bound reference; it never contains a document body or secret |
| [ChangeSetFile](ChangeSetFile.md) | One ordered file within a ChangeSetProposal |
| [ChangeSetProjection](ChangeSetProjection.md) | Observed record of the single atomic PR ForgeApplier opened for a ChangeSetPr... |
| [ChangeSetProposal](ChangeSetProposal.md) | Ordered multi-file changeset proposed against one repository, the unit ForgeA... |
| [ChiefOfStaffProfile](ChiefOfStaffProfile.md) | Configures a Chief-of-Staff role's attention loop and work disposition |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |  |
| [ClarificationPolicy](ClarificationPolicy.md) |  |
| [CliAdapterProfile](CliAdapterProfile.md) | Adapter execution profile and command template for a CLI worker runtime |
| [CliInstallationDesiredState](CliInstallationDesiredState.md) | Desired CLI installation state on a specific machine |
| [CliInstallationObservation](CliInstallationObservation.md) | Observed installation and doctor health status of a CLI tool on a machine |
| [CliInvocationEvent](CliInvocationEvent.md) | Streaming event produced during an active CLI invocation |
| [CliInvocationRequest](CliInvocationRequest.md) | Structured WorkOrder execution invocation dispatched to a CLI worker containe... |
| [CliInvocationResult](CliInvocationResult.md) | Sanitized final output payload, exit code, and evidence digest from a CLI exe... |
| [CliRelease](CliRelease.md) | Durable Git contract pinning an immutable OCI container release for a CLI too... |
| [CliReleaseSpec](CliReleaseSpec.md) | Specification for a CliRelease contract |
| [CliToolDefinition](CliToolDefinition.md) | Durable Git contract declaring an AI CLI tool available for execution |
| [CliToolDefinitionSpec](CliToolDefinitionSpec.md) | Specification for a CliToolDefinition contract |
| [CliUsageObservation](CliUsageObservation.md) | Observed consumption metrics from CLI tool invocations |
| [ComplianceMapping](ComplianceMapping.md) | Example mappings are marked DRAFT; no MAPPED or EVIDENCED status may be displ... |
| [ComplianceProfile](ComplianceProfile.md) | A named referential (edition, official URI) and its mappings to a ControlCata... |
| [ComplianceProfileSpec](ComplianceProfileSpec.md) |  |
| [ConnectorActivationDecision](ConnectorActivationDecision.md) | Owner approval and activation decision activating a connector package |
| [ConnectorAppraisal](ConnectorAppraisal.md) | The reviewed judgement that lets an McpBundle leave DECLARED |
| [ConnectorAppraisalSpec](ConnectorAppraisalSpec.md) |  |
| [ConnectorCredentialRequirement](ConnectorCredentialRequirement.md) | Declared credential requirements and delivery mode for a connector |
| [ConnectorDefinition](ConnectorDefinition.md) | A Realm-owned catalog entry for an external system boundary |
| [ConnectorDefinitionSpec](ConnectorDefinitionSpec.md) |  |
| [ConnectorIntegration](ConnectorIntegration.md) | Durable Git contract grouping related connectors (e |
| [ConnectorIntegrationSpec](ConnectorIntegrationSpec.md) | Specification for a ConnectorIntegration contract |
| [ConnectorIntentProposal](ConnectorIntentProposal.md) | Structured output of a DIALOGUE_COLLECT step capturing what connectors the as... |
| [ConnectorIntentRationale](ConnectorIntentRationale.md) |  |
| [ConnectorOperation](ConnectorOperation.md) |  |
| [ConnectorPackage](ConnectorPackage.md) | Platform-only Git contract manifest defining a complete connector package und... |
| [ConnectorPackageCertification](ConnectorPackageCertification.md) | Platform-only technical certification of an exact ConnectorPackage build |
| [ConnectorPackageCertificationSpec](ConnectorPackageCertificationSpec.md) |  |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | Specification for a ConnectorPackage manifest |
| [ConnectorSessionBinding](ConnectorSessionBinding.md) | Active OAuth or API session binding for a Principal/Realm and target machine |
| [ConnectorTestCase](ConnectorTestCase.md) | A single test case in a connector verification plan |
| [ConnectorTestPlan](ConnectorTestPlan.md) | Deterministic test plan for verifying connector operations on a target machin... |
| [ConnectorTestResult](ConnectorTestResult.md) | Observed result and evidence of a connector test case execution |
| [ConsumptionReport](ConsumptionReport.md) | What the work spent, in units ResourceBudget declares |
| [ContractReference](ContractReference.md) | Structured reference to a Git-declared contract document |
| [Control](Control.md) |  |
| [ControlAssessment](ControlAssessment.md) | Recognized result of assessing a Control against a ComplianceProfile, with ob... |
| [ControlCatalog](ControlCatalog.md) | Internal controls, reusable across ComplianceProfiles (docs/concepts/position... |
| [ControlCatalogSpec](ControlCatalogSpec.md) |  |
| [CoordinationMechanismBinding](CoordinationMechanismBinding.md) | One coordination mechanism scoped to the dependency it actually governs, repl... |
| [CoordinationProfile](CoordinationProfile.md) | A named, reusable coordination profile: authorized mechanisms, target depende... |
| [CoordinationProfileSpec](CoordinationProfileSpec.md) |  |
| [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) |  |
| [DispositionMatch](DispositionMatch.md) | minProperties:1 in the source (at least one match field present) moves to Reg... |
| [DispositionRule](DispositionRule.md) |  |
| [DocumentationRoot](DocumentationRoot.md) |  |
| [DocumentFrontMatter](DocumentFrontMatter.md) | Metadata every governed Markdown document declares, so a retriever can carry ... |
| [DocumentTemplate](DocumentTemplate.md) | A YAML document with ${placeholder} scalars, rendered into the contract a jou... |
| [DocumentTemplateBody](DocumentTemplateBody.md) |  |
| [EffectTestAuthorization](EffectTestAuthorization.md) | Dual-consent authorization record for executing irreversible effect tests |
| [EffortRungSpec](EffortRungSpec.md) |  |
| [EngagementMethod](EngagementMethod.md) | A reusable, Git-governed method for a Realm-scoped Matter |
| [EngagementMethodSpec](EngagementMethodSpec.md) |  |
| [EngagementStage](EngagementStage.md) |  |
| [EngagementTermination](EngagementTermination.md) |  |
| [EntitlementUseContext](EntitlementUseContext.md) |  |
| [EntitlementUsePermissions](EntitlementUsePermissions.md) |  |
| [EntityFacet](EntityFacet.md) |  |
| [EvidenceProfile](EvidenceProfile.md) | The type, source, freshness, independence, and retention an assessment's evid... |
| [EvidenceProfileSpec](EvidenceProfileSpec.md) |  |
| [EvidenceRecord](EvidenceRecord.md) | Append-only sanitized execution observation linked to one WorkerInvocation |
| [ExecutionCell](ExecutionCell.md) | A Realm-bound execution cell boundary that manages compute placement, local c... |
| [ExecutionCellIdentity](ExecutionCellIdentity.md) |  |
| [ExecutionCellLease](ExecutionCellLease.md) | Ephemeral sandbox execution lease bound to a machine, WorkOrder, SHA, and con... |
| [ExecutionCellProvisioningRef](ExecutionCellProvisioningRef.md) | Narrow hash-bound reference to one hosted-execution-cell provisioning run |
| [ExecutionCellSpec](ExecutionCellSpec.md) |  |
| [ExecutionCellTransport](ExecutionCellTransport.md) |  |
| [ExecutionMachine](ExecutionMachine.md) | Durable Git contract defining an execution machine bound to a single Realm |
| [ExecutionMachineSpec](ExecutionMachineSpec.md) | Specification for an ExecutionMachine contract |
| [ExternalAttestation](ExternalAttestation.md) |  |
| [FederatedPeer](FederatedPeer.md) | Desired bilateral Jumo peer configuration |
| [FederatedPeerMtls](FederatedPeerMtls.md) |  |
| [FederatedPeerSigning](FederatedPeerSigning.md) |  |
| [FederatedPeerSpec](FederatedPeerSpec.md) |  |
| [FederationMessage](FederationMessage.md) |  |
| [FederationProfile](FederationProfile.md) | A negotiated, namespaced protocol profile |
| [FederationProfileSpec](FederationProfileSpec.md) |  |
| [ForgeProjectionRef](ForgeProjectionRef.md) |  |
| [GoldenTaskCase](GoldenTaskCase.md) |  |
| [GoldenTaskSet](GoldenTaskSet.md) |  |
| [GoldenTaskSetSpec](GoldenTaskSetSpec.md) |  |
| [ImportedSchemaCandidate](ImportedSchemaCandidate.md) | Candidate LinkML class proposal derived from an external MCP tool schema |
| [ImprovementCeilings](ImprovementCeilings.md) |  |
| [ImprovementLoop](ImprovementLoop.md) | How a Project learns from its own finished work |
| [ImprovementLoopSpec](ImprovementLoopSpec.md) |  |
| [ImprovementObservation](ImprovementObservation.md) |  |
| [ImprovementRecommendation](ImprovementRecommendation.md) | One actionable finding against a Project's corpus, in Git |
| [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |  |
| [ImprovementTarget](ImprovementTarget.md) |  |
| [InterfaceSurface](InterfaceSurface.md) |  |
| [InterfaceSurfaceSpec](InterfaceSurfaceSpec.md) |  |
| [InvocationAuthorizationReceipt](InvocationAuthorizationReceipt.md) | Signed, single-use MCP invocation authorization (ADR-0055) |
| [JourneyVerificationSpec](JourneyVerificationSpec.md) | Secret-free declaration of an explicit real observation a journey step may re... |
| [JumoKit](JumoKit.md) | Root manifest for one portable Jumo Kit repository |
| [JumoKitSpec](JumoKitSpec.md) |  |
| [KitBinding](KitBinding.md) | Realm-local, closed binding for one Jumo Kit release |
| [KitBindingDeclaration](KitBindingDeclaration.md) |  |
| [KitBindingSpec](KitBindingSpec.md) |  |
| [KitBindingValue](KitBindingValue.md) | Open string-keyed map (string|number|boolean values) in the source schema, mo... |
| [KitLock](KitLock.md) | Rendered provenance for one admitted Jumo Kit |
| [KitLockSpec](KitLockSpec.md) |  |
| [KitModule](KitModule.md) |  |
| [KitProfile](KitProfile.md) |  |
| [KitReference](KitReference.md) |  |
| [KitReleaseCertification](KitReleaseCertification.md) | Portable independent review of an exact Jumo Kit release and its executable m... |
| [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |  |
| [LayerOverride](LayerOverride.md) | Explicit declaration of an overridden document from a lower layer or imported... |
| [MachineAdminCommand](MachineAdminCommand.md) | Ansible playbook execution command sent to an enrolled machine |
| [MachineAdminPlaybook](MachineAdminPlaybook.md) | Git-governed allowlisted Ansible playbook definition for machine administrati... |
| [MachineAdminPlaybookSpec](MachineAdminPlaybookSpec.md) | Specification of an allowlisted machine admin playbook |
| [MachineAdminRequest](MachineAdminRequest.md) | Web administration request to dispatch an allowlisted Ansible playbook to a m... |
| [MachineAdminResult](MachineAdminResult.md) | Result and sanitized evidence of an Ansible admin command execution |
| [MachineEnrollmentChallenge](MachineEnrollmentChallenge.md) | Short-lived enrollment challenge issued by the control plane |
| [MachineEnrollmentRequest](MachineEnrollmentRequest.md) | BYOVM one-shot machine enrollment request carrying CSR and system inventory |
| [MachineEnrollmentResult](MachineEnrollmentResult.md) | Result of a machine enrollment challenge containing issued mTLS certificates |
| [MachineHealthObservation](MachineHealthObservation.md) | Observed real-time health and load status of an execution machine |
| [MachineHostDefinition](MachineHostDefinition.md) | Durable Git contract defining the host environment and driver for a machine |
| [MachineHostDefinitionSpec](MachineHostDefinitionSpec.md) | Specification for a MachineHostDefinition contract |
| [MachineInventoryObservation](MachineInventoryObservation.md) | Observed hardware and OS characteristics of an enrolled machine |
| [MachineNetworkConfig](MachineNetworkConfig.md) | Network configuration for an ExecutionMachine |
| [MachineRuntimeInstallation](MachineRuntimeInstallation.md) | Observed runtime installation (CLI or connector) on a target machine |
| [McpBundle](McpBundle.md) | A reviewed, deployable MCP package |
| [McpBundleArtifact](McpBundleArtifact.md) |  |
| [McpBundleOperation](McpBundleOperation.md) |  |
| [McpBundleRuntime](McpBundleRuntime.md) | An McpBundle's single upstream branch is always OCI_STDIO with a pinned artif... |
| [McpBundleSemanticProfile](McpBundleSemanticProfile.md) |  |
| [McpBundleSpec](McpBundleSpec.md) |  |
| [McpCatalogAssessment](McpCatalogAssessment.md) |  |
| [McpCatalogFieldCandidate](McpCatalogFieldCandidate.md) |  |
| [McpCatalogFieldSelection](McpCatalogFieldSelection.md) |  |
| [McpCatalogIdentity](McpCatalogIdentity.md) |  |
| [McpCatalogProvenancePin](McpCatalogProvenancePin.md) | Immutable source observation pin carried into generated connector material; i... |
| [McpCatalogServer](McpCatalogServer.md) | Recognized PostgreSQL projection of sourced catalog observations |
| [McpCatalogVersion](McpCatalogVersion.md) |  |
| [McpInventorySnapshot](McpInventorySnapshot.md) | PostgreSQL event recording an MCP inventory discovered under an exact Realm l... |
| [McpProtocolProfile](McpProtocolProfile.md) | Supported MCP protocol capabilities and versions |
| [McpReconciliationCandidate](McpReconciliationCandidate.md) |  |
| [McpReconciliationDecision](McpReconciliationDecision.md) |  |
| [McpRegistrySource](McpRegistrySource.md) | Platform-scoped configuration for a bounded registry adapter |
| [McpRegistrySourceBinding](McpRegistrySourceBinding.md) | Realm-owned declaration binding a Platform McpRegistrySource to the Execution... |
| [McpRegistrySourceBindingSpec](McpRegistrySourceBindingSpec.md) |  |
| [McpRegistrySourceSpec](McpRegistrySourceSpec.md) |  |
| [McpRegistrySyncStatus](McpRegistrySyncStatus.md) |  |
| [McpServerDescriptor](McpServerDescriptor.md) | Descriptor specifying MCP server transport and connection target |
| [McpToolDescriptor](McpToolDescriptor.md) | Tool schema and metadata captured during MCP discovery |
| [Metadata](Metadata.md) | Shared identity block for every contract document |
| [MethodologySource](MethodologySource.md) |  |
| [Milestone](Milestone.md) |  |
| [ModuleDigestEntry](ModuleDigestEntry.md) |  |
| [NestedOptionsSource](NestedOptionsSource.md) | Resolves a field's options from a nested multivalued attribute of one specifi... |
| [NotificationPreferences](NotificationPreferences.md) |  |
| [OAuthClientBinding](OAuthClientBinding.md) | Durable Git contract binding an OAuth client registration to a Realm |
| [OAuthClientBindingSpec](OAuthClientBindingSpec.md) | Specification for an OAuthClientBinding contract |
| [OfferingAiUsage](OfferingAiUsage.md) |  |
| [OfferingClientRepository](OfferingClientRepository.md) |  |
| [OfferingExport](OfferingExport.md) |  |
| [OfferingKits](OfferingKits.md) |  |
| [OfferingOnboarding](OfferingOnboarding.md) |  |
| [OfferingOverage](OfferingOverage.md) |  |
| [OfferingPremiumKitTerms](OfferingPremiumKitTerms.md) |  |
| [OfferingPricing](OfferingPricing.md) |  |
| [OfferingSpec](OfferingSpec.md) | Hypothesis-level managed-service offer for a client-owned Solo deployment |
| [OfferingSpecBody](OfferingSpecBody.md) |  |
| [OfferingSupport](OfferingSupport.md) |  |
| [OfferingTopology](OfferingTopology.md) |  |
| [OfferingValidation](OfferingValidation.md) |  |
| [Organization](Organization.md) | A tenant boundary with its own Git contract source |
| [OrganizationAccessBinding](OrganizationAccessBinding.md) | Explicit Git binding for Organization owners, administrators, and auditors |
| [OrganizationAccessBindingSpec](OrganizationAccessBindingSpec.md) |  |
| [OrganizationAuditRetentionPolicy](OrganizationAuditRetentionPolicy.md) | Default retention for terminal recognized-state history in one Organization |
| [OrganizationAuditRetentionPolicySpec](OrganizationAuditRetentionPolicySpec.md) |  |
| [OrganizationBody](OrganizationBody.md) |  |
| [OrganizationEnrollmentPolicy](OrganizationEnrollmentPolicy.md) | Approved OIDC admission rule for derived MEMBER status and a bounded onboardi... |
| [OrganizationEnrollmentPolicySpec](OrganizationEnrollmentPolicySpec.md) |  |
| [OrganizationEnrollmentRequest](OrganizationEnrollmentRequest.md) | First, identity-admitted onboarding payload |
| [OrganizationPublicationPolicy](OrganizationPublicationPolicy.md) | Organization-level publication policy setting allowed interoperability adapte... |
| [OrganizationPublicationPolicySpec](OrganizationPublicationPolicySpec.md) |  |
| [OrganizationRetentionHold](OrganizationRetentionHold.md) | A time-bounded, auditable Organization-wide pause of terminal-history purge |
| [OrganizationRetentionHoldSpec](OrganizationRetentionHoldSpec.md) |  |
| [OrganizationRoleBinding](OrganizationRoleBinding.md) |  |
| [OrganizationSpec](OrganizationSpec.md) | A named organization of roles for a recurring mission (docs/concepts/position... |
| [OrganizationSpecBody](OrganizationSpecBody.md) |  |
| [OrganizationTemplate](OrganizationTemplate.md) | Parametric package of roles, teams, profiles, and lifecycle |
| [OrganizationTemplateSpec](OrganizationTemplateSpec.md) |  |
| [PersonalSpace](PersonalSpace.md) | Mandatory personal space declaration for a human or agent principal within a ... |
| [PersonalSpaceSpec](PersonalSpaceSpec.md) |  |
| [PlannedOperation](PlannedOperation.md) | One operation exposed by a signed MCP gateway session plan, resolved from a v... |
| [PolicyInput](PolicyInput.md) | Typed input structure evaluated by OPA policies |
| [PolicyRule](PolicyRule.md) | Conditional requiredness (ALLOW_WITH_OBLIGATIONS / REQUIRE_APPROVAL require o... |
| [PolicySet](PolicySet.md) | Executable authorization |
| [PolicySetSpec](PolicySetSpec.md) |  |
| [Practice](Practice.md) | A recurring governed invocation |
| [PracticeSpec](PracticeSpec.md) |  |
| [Preferences](Preferences.md) | User or agent preferences attached to a PersonalSpace |
| [PreferencesSpec](PreferencesSpec.md) |  |
| [Principal](Principal.md) | A person the Realm knows about: its owner, a Realm member with a personal spa... |
| [PrincipalIdentityBinding](PrincipalIdentityBinding.md) | Explicit Realm-local binding between a member or owner Principal and its OIDC... |
| [PrincipalIdentityBindingSpec](PrincipalIdentityBindingSpec.md) |  |
| [PrincipalSpec](PrincipalSpec.md) |  |
| [Principle](Principle.md) |  |
| [PrincipleSet](PrincipleSet.md) | Judgement heuristics |
| [PrincipleSetSpec](PrincipleSetSpec.md) |  |
| [ProcessDurability](ProcessDurability.md) |  |
| [ProcessFlow](ProcessFlow.md) |  |
| [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art |
| [ProcessRunRef](ProcessRunRef.md) |  |
| [ProcessSpec](ProcessSpec.md) | A durable process: a graph of typed steps and flows, compiled to a Temporal W... |
| [ProcessSpecBody](ProcessSpecBody.md) |  |
| [ProcessStageWorkerRequirement](ProcessStageWorkerRequirement.md) |  |
| [ProcessStep](ProcessStep.md) | One node in the process graph |
| [Project](Project.md) | A governed body of work declared in a Realm control repository |
| [ProjectCompatibility](ProjectCompatibility.md) |  |
| [ProjectDocumentation](ProjectDocumentation.md) |  |
| [ProjectionField](ProjectionField.md) |  |
| [ProjectionOptionCondition](ProjectionOptionCondition.md) | One condition a candidate instance must satisfy to be offered as a field's op... |
| [ProjectionSection](ProjectionSection.md) |  |
| [ProjectionSpec](ProjectionSpec.md) | A named view of one generated LinkML class |
| [ProjectionSpecBody](ProjectionSpecBody.md) |  |
| [ProjectPersonalSpaceBinding](ProjectPersonalSpaceBinding.md) |  |
| [ProjectRuntime](ProjectRuntime.md) |  |
| [ProjectSpec](ProjectSpec.md) |  |
| [ProjectStateAuthority](ProjectStateAuthority.md) |  |
| [PromptBody](PromptBody.md) |  |
| [PromptOutput](PromptOutput.md) |  |
| [PromptTemplate](PromptTemplate.md) | A prompt is Ring 2 material: reviewable, versioned agent behavior (ADR-0008) |
| [PromptTemplateSpec](PromptTemplateSpec.md) |  |
| [PromptVariable](PromptVariable.md) |  |
| [ProviderAccount](ProviderAccount.md) | One model or CLI account and the window its quota renews in |
| [ProviderAccountSpec](ProviderAccountSpec.md) |  |
| [ProviderEntitlement](ProviderEntitlement.md) |  |
| [ProviderNativeEffort](ProviderNativeEffort.md) | Provider-native reasoning-effort parameters, applied verbatim by RequestShape... |
| [ProviderPlatform](ProviderPlatform.md) | The declared catalog entry a ProviderAccount is opened against -- wire protoc... |
| [ProviderPlatformSpec](ProviderPlatformSpec.md) |  |
| [ProviderQuotaObservation](ProviderQuotaObservation.md) | Observed quota and rate limit status from an upstream provider |
| [ProviderQuotaWindow](ProviderQuotaWindow.md) |  |
| [ProviderRouting](ProviderRouting.md) |  |
| [ProviderSessionBinding](ProviderSessionBinding.md) | Recognized opaque binding between a holder provider session and one Execution... |
| [QuietHoursWindow](QuietHoursWindow.md) |  |
| [RealmChiefOfStaffRef](RealmChiefOfStaffRef.md) |  |
| [RealmEnforcement](RealmEnforcement.md) | ENFORCED requiring observedAt/evidenceRef/evidenceMaxAge moves to Rego: claim... |
| [RealmIngressBinding](RealmIngressBinding.md) | Per-tenant DNS routing for one RealmTemplate |
| [RealmPublication](RealmPublication.md) | Governed public interoperability exposition under /u/{handle} for a Realm |
| [RealmPublicationSpec](RealmPublicationSpec.md) |  |
| [RealmTemplate](RealmTemplate.md) | A Realm is a governance, privacy and security boundary |
| [RealmTemplateSpec](RealmTemplateSpec.md) |  |
| [RemoteMcpAppraisal](RemoteMcpAppraisal.md) |  |
| [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |  |
| [RemoteMcpService](RemoteMcpService.md) | A Realm-local remote MCP endpoint |
| [RemoteMcpServiceSpec](RemoteMcpServiceSpec.md) |  |
| [RenderedKitAsset](RenderedKitAsset.md) | Provenance for one rendered binary asset or i18n bundle -- same digest-proven... |
| [RenderedKitFile](RenderedKitFile.md) |  |
| [RepositoryBinding](RepositoryBinding.md) |  |
| [ResourceBudget](ResourceBudget.md) | Per-Episode frugality limits |
| [ResourceBudgetSpec](ResourceBudgetSpec.md) |  |
| [RoleAssignment](RoleAssignment.md) | Git-declared bearer of one stable role |
| [RoleAssignmentSpec](RoleAssignmentSpec.md) |  |
| [RoleBearer](RoleBearer.md) | Discriminated union (HUMAN | AGENT | FEDERATED_PEER) in the source schema |
| [RoleDefinition](RoleDefinition.md) | A stable Realm-owned acting role carrying a mission |
| [RoleDefinitionSpec](RoleDefinitionSpec.md) |  |
| [RoleLifecyclePolicy](RoleLifecyclePolicy.md) | Onboarding policy and evaluation criteria for roles |
| [RoleLifecyclePolicySpec](RoleLifecyclePolicySpec.md) |  |
| [RoutingDecision](RoutingDecision.md) | Immutable policy-authorized adapter and cell selection for one recognized tur... |
| [RoutingEligibility](RoutingEligibility.md) | A desired routing eligibility relation between roles or teams and a Project |
| [RoutingEligibilitySpec](RoutingEligibilitySpec.md) |  |
| [SchemaBinding](SchemaBinding.md) | Deterministic link between a payload, its LinkML class, and exact schema dige... |
| [SchemaBoundPayload](SchemaBoundPayload.md) | Bounded dynamic JSON payload guaranteed by a validated SchemaBinding |
| [SeatIncompatibility](SeatIncompatibility.md) |  |
| [SeatIndependenceGroup](SeatIndependenceGroup.md) |  |
| [SecretBinding](SecretBinding.md) | A Git-declared reference to runtime secret material |
| [SecretBindingSpec](SecretBindingSpec.md) | anyOf(allowedBundleRefs, allowedRemoteServiceRefs, allowedConnectorRefs, allo... |
| [SecretInjection](SecretInjection.md) |  |
| [SecretRotation](SecretRotation.md) |  |
| [SelfDescription](SelfDescription.md) | How a Project or agent explains itself |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  |
| [SelfDescriptionFact](SelfDescriptionFact.md) |  |
| [SelfDescriptionSpec](SelfDescriptionSpec.md) |  |
| [SelfDescriptionSubject](SelfDescriptionSubject.md) |  |
| [SessionPlan](SessionPlan.md) | Signed MCP gateway session plan scoped to one ExecutionCellLease (mcp-gateway... |
| [SessionPlanRequest](SessionPlanRequest.md) | Request to issue a signed MCP gateway session plan for one ExecutionCellLease... |
| [SolicitationApproval](SolicitationApproval.md) |  |
| [SolicitationContract](SolicitationContract.md) | The only way one Project or Realm may solicit another (canonical decision 25) |
| [SolicitationContractSpec](SolicitationContractSpec.md) |  |
| [Surface](Surface.md) | Conditional (reads containing FORGE_PROJECTIONS forces audience REALM_PRIVATE... |
| [SurfaceWritePath](SurfaceWritePath.md) | Path traversal, editor-to-path compatibility, and required-obligation preserv... |
| [TeamCoordination](TeamCoordination.md) |  |
| [TeamMember](TeamMember.md) | Discriminated union (roleMember | teamMember) in the source schema |
| [TeamSpec](TeamSpec.md) | A Realm-owned composition of roles and nested teams |
| [TeamSpecBody](TeamSpecBody.md) |  |
| [TerminologyEntry](TerminologyEntry.md) |  |
| [TermsReview](TermsReview.md) |  |
| [ThemeObjectForm](ThemeObjectForm.md) |  |
| [ThemePack](ThemePack.md) | Naming, voice and visual presentation |
| [ThemePackSpec](ThemePackSpec.md) |  |
| [ThemePresence](ThemePresence.md) | How the Chief of Staff is drawn on a surface |
| [ThemeRoom](ThemeRoom.md) |  |
| [ThemeVisualization](ThemeVisualization.md) |  |
| [ThemeVoice](ThemeVoice.md) |  |
| [ThemeVoiceRoleOverride](ThemeVoiceRoleOverride.md) |  |
| [UpstreamToolEntry](UpstreamToolEntry.md) | Reason required when disposition is WITHHELD or QUARANTINED (Rego): exposing ... |
| [VocabularyEntry](VocabularyEntry.md) | One CONTRACT kind's names |
| [VocabularySet](VocabularySet.md) | Generated concept glossary |
| [VocabularySetSpec](VocabularySetSpec.md) |  |
| [WorkerContextRequirement](WorkerContextRequirement.md) |  |
| [WorkerGrantedOperation](WorkerGrantedOperation.md) |  |
| [WorkerImage](WorkerImage.md) |  |
| [WorkerInteractionRequirement](WorkerInteractionRequirement.md) |  |
| [WorkerInvocation](WorkerInvocation.md) | Ephemeral recognized binding of a turn, route, cell, grant and execution evid... |
| [WorkerIsolation](WorkerIsolation.md) |  |
| [WorkerIsolationLimits](WorkerIsolationLimits.md) |  |
| [WorkerLimits](WorkerLimits.md) |  |
| [WorkerModelAccess](WorkerModelAccess.md) |  |
| [WorkerQualityRequirement](WorkerQualityRequirement.md) |  |
| [WorkerRequirementProfile](WorkerRequirementProfile.md) | A multi-dimensional task requirement vector used to select an eligible runtim... |
| [WorkerRequirementProfileSpec](WorkerRequirementProfileSpec.md) |  |
| [WorkerSubstrate](WorkerSubstrate.md) | Realm-owned declaration of a constrained worker runtime |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) |  |
| [WorkloadCommand](WorkloadCommand.md) | Typed workload command claimed by pull from an ExecutionMachine, distinct fro... |
| [WorkloadCommandResult](WorkloadCommandResult.md) | Terminal outcome of a claimed WorkloadCommand, sanitized before it leaves the... |
| [WorkOrder](WorkOrder.md) | One unit of dispatched work, in Git |
| [WorkOrderSpec](WorkOrderSpec.md) |  |
| [WorkOrderSpecification](WorkOrderSpecification.md) |  |



## Slots

| Slot | Description |
| --- | --- |
| [acceptanceCriteria](acceptanceCriteria.md) | What the result is checked against |
| [accountUse](accountUse.md) | Which ProviderAccount use context this substrate is authorized to consume, ex... |
| [acknowledgement](acknowledgement.md) |  |
| [action](action.md) |  |
| [actions](actions.md) |  |
| [active](active.md) |  |
| [activeLeasesCount](activeLeasesCount.md) |  |
| [activeProjectionGeneration](activeProjectionGeneration.md) |  |
| [activity](activity.md) |  |
| [actualOutputDigest](actualOutputDigest.md) |  |
| [adapter](adapter.md) |  |
| [addressedRoleRefs](addressedRoleRefs.md) | RoleDefinitions this rule matches as the addressee |
| [addressedTeamRefs](addressedTeamRefs.md) | TeamSpecs this rule matches as the addressee |
| [admissionReason](admissionReason.md) | Required on ADMISSION_REFUSED (Rego) |
| [admittedEmailDomains](admittedEmailDomains.md) |  |
| [admittedEmails](admittedEmails.md) |  |
| [agentCard](agentCard.md) |  |
| [agentDefinitionRef](agentDefinitionRef.md) | Required when kind is AGENT |
| [agentGuidance](agentGuidance.md) | When to reach for this operation and when not to, written for the choosing ag... |
| [agentUsability](agentUsability.md) | Whether an agent can use it without guessing |
| [agentVersion](agentVersion.md) |  |
| [aiUsage](aiUsage.md) |  |
| [algorithmVersion](algorithmVersion.md) |  |
| [alias](alias.md) |  |
| [allowEarlyTermination](allowEarlyTermination.md) |  |
| [allowedAdapters](allowedAdapters.md) |  |
| [allowedConnectorDefinitionRefs](allowedConnectorDefinitionRefs.md) |  |
| [allowedMcpBundleRefs](allowedMcpBundleRefs.md) |  |
| [allowedOperationRefs](allowedOperationRefs.md) |  |
| [allowedRealms](allowedRealms.md) |  |
| [allowedRemoteMcpServiceRefs](allowedRemoteMcpServiceRefs.md) |  |
| [allowedRequests](allowedRequests.md) |  |
| [allowedWorkerSubstrateRefs](allowedWorkerSubstrateRefs.md) |  |
| [alternativeProviderAccountRefs](alternativeProviderAccountRefs.md) |  |
| [ambientToolAuthority](ambientToolAuthority.md) | No CLI home, image, plugin, repository file, or provider default silently gra... |
| [annotations](annotations.md) |  |
| [ansibleBaselineRef](ansibleBaselineRef.md) | No confirmed Git-contract target kind exists for this field yet (ADR-0045 mig... |
| [answers](answers.md) | Questions this document answers, in the words a person would use |
| [apiVersion](apiVersion.md) |  |
| [appliedBy](appliedBy.md) | The trusted component that applies the effect |
| [appliesToCapability](appliesToCapability.md) | The capability this playbook implements |
| [appraisalDigest](appraisalDigest.md) |  |
| [appraisedAt](appraisedAt.md) |  |
| [appraisedByRoleDefinitionRef](appraisedByRoleDefinitionRef.md) |  |
| [appraisedDigest](appraisedDigest.md) | The exact artifact that was looked at |
| [appraiserRef](appraiserRef.md) |  |
| [approval](approval.md) |  |
| [approvalPolicy](approvalPolicy.md) | OWNER_ONLY (default): only the ownerRealm may authorize forge writes |
| [approvalReference](approvalReference.md) |  |
| [approverPrincipalRefs](approverPrincipalRefs.md) |  |
| [approverRef](approverRef.md) |  |
| [arch](arch.md) |  |
| [argumentDigest](argumentDigest.md) |  |
| [artifact](artifact.md) |  |
| [artifactAllowlist](artifactAllowlist.md) |  |
| [artifactOrEndpoint](artifactOrEndpoint.md) |  |
| [assessedAt](assessedAt.md) |  |
| [assessmentProcessSpecRef](assessmentProcessSpecRef.md) | Optional explicit ProcessSpec (execution |
| [assetExports](assetExports.md) | Optional binary assets (images) and i18n bundles (json) the kit distributes, ... |
| [assurance](assurance.md) |  |
| [assuranceLevel](assuranceLevel.md) |  |
| [attestation](attestation.md) | Required when status is EXTERNALLY_ATTESTED (Rego) |
| [attestationRef](attestationRef.md) |  |
| [audience](audience.md) | Widest scope a retrieval may serve this document to |
| [authAction](authAction.md) |  |
| [authEndpoint](authEndpoint.md) |  |
| [authority](authority.md) | Structurally enforced |
| [authorizationId](authorizationId.md) |  |
| [authorizedAt](authorizedAt.md) |  |
| [authorRef](authorRef.md) |  |
| [autonomy](autonomy.md) |  |
| [background](background.md) | Asset reference for the room's illustrated 2D backdrop |
| [backupRetentionDays](backupRetentionDays.md) |  |
| [baseCommitSha](baseCommitSha.md) |  |
| [baseDomain](baseDomain.md) | The parent domain subdomain is bound under, e |
| [basePath](basePath.md) |  |
| [baseUrlAllowlist](baseUrlAllowlist.md) |  |
| [bearer](bearer.md) |  |
| [billingCadence](billingCadence.md) |  |
| [bindings](bindings.md) | Open string-keyed map in the source schema, modeled as a list of key/type pai... |
| [blueprintName](blueprintName.md) |  |
| [body](body.md) | Markdown allowed |
| [booleanFields](booleanFields.md) | Field names whose collected "true"/"false" string is coerced to a real YAML b... |
| [bootstrapDigest](bootstrapDigest.md) |  |
| [boundedTrialEpisodesRequired](boundedTrialEpisodesRequired.md) |  |
| [branchLabel](branchLabel.md) | Required when `from` names a GATEWAY step with more than one outgoing flow (R... |
| [branchProtection](branchProtection.md) |  |
| [branchSha](branchSha.md) |  |
| [bridgeNetwork](bridgeNetwork.md) |  |
| [buildRecipeRef](buildRecipeRef.md) |  |
| [bundleOperationRef](bundleOperationRef.md) |  |
| [businessState](businessState.md) |  |
| [byokAllowed](byokAllowed.md) |  |
| [caCertificatePem](caCertificatePem.md) |  |
| [cadence](cadence.md) |  |
| [callerProject](callerProject.md) |  |
| [callsCount](callsCount.md) |  |
| [candidateId](candidateId.md) |  |
| [candidateRef](candidateRef.md) |  |
| [canonical](canonical.md) |  |
| [canonicalDecisions](canonicalDecisions.md) | Folded in from the retired ProjectContract kind (owner decision O3, 2026-08-2... |
| [canonicalDomain](canonicalDomain.md) |  |
| [capabilities](capabilities.md) |  |
| [capability](capability.md) |  |
| [capabilityGrantRef](capabilityGrantRef.md) |  |
| [capabilityProfileRef](capabilityProfileRef.md) |  |
| [capabilityRef](capabilityRef.md) |  |
| [capabilityRefs](capabilityRefs.md) |  |
| [capturedAt](capturedAt.md) |  |
| [cases](cases.md) |  |
| [catalogId](catalogId.md) |  |
| [catalogUpdatesRequireSubscription](catalogUpdatesRequireSubscription.md) |  |
| [category](category.md) | Catalog category for this journey |
| [ceilings](ceilings.md) |  |
| [certificatePem](certificatePem.md) |  |
| [challengeToken](challengeToken.md) |  |
| [changeProposalRef](changeProposalRef.md) |  |
| [changeSetProposalId](changeSetProposalId.md) |  |
| [changesetSha256](changesetSha256.md) |  |
| [channels](channels.md) |  |
| [chiefOfStaff](chiefOfStaff.md) |  |
| [chiefOfStaffForm](chiefOfStaffForm.md) | Named visual form |
| [chiefOfStaffProfileRef](chiefOfStaffProfileRef.md) |  |
| [claimCoverage](claimCoverage.md) | What claim this evidence class actually supports: provenance volume alone is ... |
| [clarification](clarification.md) |  |
| [classification](classification.md) | Same enumeration as capability data access, retrieval and rendering (canonica... |
| [classificationCeiling](classificationCeiling.md) |  |
| [cli](cli.md) | The WorkerCli value this tool implements |
| [clientId](clientId.md) |  |
| [clientRepository](clientRepository.md) |  |
| [code](code.md) |  |
| [collectionProjections](collectionProjections.md) | What a multivalued field contributes to the emitted document |
| [columns](columns.md) |  |
| [commandId](commandId.md) |  |
| [commands](commands.md) |  |
| [commit](commit.md) |  |
| [compatibility](compatibility.md) |  |
| [compensationForStepRef](compensationForStepRef.md) |  |
| [completedAt](completedAt.md) |  |
| [completionMode](completionMode.md) |  |
| [completionPath](completionPath.md) |  |
| [complianceLevel](complianceLevel.md) |  |
| [complianceProfileRef](complianceProfileRef.md) |  |
| [concurrencyPolicy](concurrencyPolicy.md) |  |
| [condition](condition.md) | The condition under which this commitment is discharged, in addition to (not ... |
| [conditions](conditions.md) | Required and non-empty under ACCEPTED_WITH_CONDITIONS (Rego) |
| [confidence](confidence.md) | Confidence of the interpretation behind this item, not of the outcome it repo... |
| [configurationRef](configurationRef.md) |  |
| [connectorCatalogScope](connectorCatalogScope.md) |  |
| [connectorDefinitionRef](connectorDefinitionRef.md) |  |
| [connectorDefinitionRefs](connectorDefinitionRefs.md) |  |
| [connectorId](connectorId.md) |  |
| [connectorPackageRef](connectorPackageRef.md) |  |
| [connectorRef](connectorRef.md) |  |
| [consentState](consentState.md) | NOT_APPLICABLE for OWNER and MEMBER, who consented by joining the Realm |
| [consumerIdentityRouting](consumerIdentityRouting.md) |  |
| [consumption](consumption.md) |  |
| [containerRuntimeSocket](containerRuntimeSocket.md) | A runtime socket mount hands the container authority over its own sandbox |
| [contentDigest](contentDigest.md) |  |
| [contentHash](contentHash.md) |  |
| [contentSanitized](contentSanitized.md) |  |
| [context](context.md) |  |
| [contextSha256](contextSha256.md) |  |
| [contractDigest](contractDigest.md) |  |
| [contractDirectory](contractDirectory.md) |  |
| [contractPaths](contractPaths.md) |  |
| [contractRepository](contractRepository.md) | Target git repository URL or forge path for this Realm |
| [contractRevision](contractRevision.md) | Commit the contracts were read at |
| [contractsPath](contractsPath.md) |  |
| [controlCatalogRef](controlCatalogRef.md) | The ControlCatalog this profile maps against |
| [controlId](controlId.md) |  |
| [controlPlane](controlPlane.md) |  |
| [controlRef](controlRef.md) | References a Control |
| [controls](controls.md) |  |
| [conversationTask](conversationTask.md) | The ConversationService task this prompt serves |
| [conversationTurnRef](conversationTurnRef.md) |  |
| [coordination](coordination.md) | The managed dependency, not the team, is the unit of analysis (docs/concepts/... |
| [coOwnerRealms](coOwnerRealms.md) | Additional Realm identifiers that co-govern this repository |
| [cpuCount](cpuCount.md) |  |
| [cpus](cpus.md) |  |
| [create](create.md) |  |
| [credentialCustody](credentialCustody.md) | Must equal LOCAL_CELL_SEALED (Rego, corpus |
| [credentialHeader](credentialHeader.md) |  |
| [credentialSource](credentialSource.md) | MODEL_WORKER_PROCESS may consume only an OpenBao-rendered file bound to this ... |
| [credentialType](credentialType.md) |  |
| [creditor](creditor.md) | The role, team, or Project the work is owed to |
| [csrPem](csrPem.md) |  |
| [dataCategories](dataCategories.md) |  |
| [dataScope](dataScope.md) |  |
| [dataScopeCeiling](dataScopeCeiling.md) |  |
| [debtor](debtor.md) | The role or team that owes this work (commitment lifecycle addition, conceptu... |
| [decidedAt](decidedAt.md) |  |
| [decision](decision.md) |  |
| [decisionId](decisionId.md) |  |
| [decisionOptions](decisionOptions.md) |  |
| [decisionRef](decisionRef.md) |  |
| [decisionRefs](decisionRefs.md) | Architecture decisions this work implements or expects |
| [decisions](decisions.md) | Canonical decision numbers (docs/00-canonical-decisions |
| [declineReason](declineReason.md) |  |
| [defaultAutonomy](defaultAutonomy.md) |  |
| [defaultDisplayName](defaultDisplayName.md) |  |
| [defaultEffortLadder](defaultEffortLadder.md) | The rung-by-rung ladder every account opened against this platform inherits u... |
| [defaultOption](defaultOption.md) |  |
| [defaultProfile](defaultProfile.md) |  |
| [defaultTimeoutSeconds](defaultTimeoutSeconds.md) |  |
| [defaultTurnLimit](defaultTurnLimit.md) |  |
| [defaultValue](defaultValue.md) | Used when the field was not collected |
| [defaultWorkerRequirementProfileRef](defaultWorkerRequirementProfileRef.md) | Optional, only meaningful when kind is AGENT |
| [defeaters](defeaters.md) | Known conditions that would invalidate this evidence class |
| [delegatedRealmRef](delegatedRealmRef.md) | Optional child or target Realm governed by this meta-role |
| [delegatedSecretBindings](delegatedSecretBindings.md) |  |
| [deliverable](deliverable.md) |  |
| [delivery](delivery.md) | How the result reaches the human |
| [deliveryMode](deliveryMode.md) |  |
| [density](density.md) |  |
| [dependencyKind](dependencyKind.md) | Open vocabulary naming the managed dependency (e |
| [dependsOn](dependsOn.md) | Step IDs that must be completed before this step becomes available |
| [dependsOnWorkOrderRefs](dependsOnWorkOrderRefs.md) | WorkOrders that must be COMPLETED before this one starts |
| [deployment](deployment.md) |  |
| [description](description.md) |  |
| [descriptionI18nKey](descriptionI18nKey.md) | i18n key resolving this step's user-facing description |
| [desiredState](desiredState.md) |  |
| [detail](detail.md) |  |
| [deviceId](deviceId.md) |  |
| [dialogueOptions](dialogueOptions.md) |  |
| [digest](digest.md) |  |
| [dimension](dimension.md) |  |
| [dimensions](dimensions.md) |  |
| [direction](direction.md) |  |
| [directory](directory.md) |  |
| [directWorkProcessSpecRef](directWorkProcessSpecRef.md) | Governed child Episode started by HANDLE_DIRECTLY; cannot be the intake workf... |
| [discoveredAt](discoveredAt.md) |  |
| [diskBytes](diskBytes.md) |  |
| [diskUsagePercent](diskUsagePercent.md) |  |
| [displayEn](displayEn.md) |  |
| [displayFr](displayFr.md) |  |
| [displayName](displayName.md) |  |
| [disposition](disposition.md) |  |
| [dispositionRules](dispositionRules.md) |  |
| [doctorCommand](doctorCommand.md) |  |
| [doctorSummary](doctorSummary.md) |  |
| [documentation](documentation.md) | Where this Project's governed Markdown lives and who may retrieve it |
| [documentTemplateRef](documentTemplateRef.md) | The DocumentTemplate that renders the document |
| [domainPrefix](domainPrefix.md) |  |
| [dpia](dpia.md) | RGPD art |
| [dpiaEvidenceProfileRef](dpiaEvidenceProfileRef.md) | References an EvidenceProfile carrying the DPIA (art |
| [draft](draft.md) |  |
| [driver](driver.md) |  |
| [driverKind](driverKind.md) |  |
| [durability](durability.md) |  |
| [durableWorkflowEngine](durableWorkflowEngine.md) |  |
| [duration](duration.md) | Required when kind is ROLLING or CALENDAR; forbidden when METERED (Rego) |
| [durationMs](durationMs.md) |  |
| [ecosystem](ecosystem.md) |  |
| [edition](edition.md) | e |
| [editor](editor.md) |  |
| [effect](effect.md) |  |
| [effectClass](effectClass.md) |  |
| [effortLadder](effortLadder.md) | Overrides the platform's defaultEffortLadder rung for rung when declared |
| [egressAllowlist](egressAllowlist.md) |  |
| [egressRouteId](egressRouteId.md) | Names the generated provider-egress nginx location this platform's traffic pr... |
| [eligibleRoleDefinitionRefs](eligibleRoleDefinitionRefs.md) |  |
| [eligibleTeamSpecRefs](eligibleTeamSpecRefs.md) |  |
| [emission](emission.md) | What a PROPOSAL journey emits when its run completes: the contract kind, wher... |
| [emitsCapability](emitsCapability.md) | The single capability a proposal journey may invoke |
| [enabled](enabled.md) | Source schema pins this to `const: true`; enforced in Rego, not expressible a... |
| [enabledAdapters](enabledAdapters.md) |  |
| [end](end.md) |  |
| [endpoint](endpoint.md) |  |
| [endpointConfigurationRef](endpointConfigurationRef.md) |  |
| [endpointRef](endpointRef.md) |  |
| [endpointUrl](endpointUrl.md) |  |
| [enforced_by](enforced_by.md) | Comma-separated paths that mechanically enforce this document's rules |
| [enforcement](enforcement.md) |  |
| [engagementMethodRef](engagementMethodRef.md) |  |
| [engine](engine.md) |  |
| [enrolledAt](enrolledAt.md) |  |
| [entitlement](entitlement.md) |  |
| [entity](entity.md) |  |
| [entityKey](entityKey.md) |  |
| [entries](entries.md) |  |
| [entrypoint](entrypoint.md) |  |
| [environment](environment.md) |  |
| [environmentVariable](environmentVariable.md) |  |
| [episodeId](episodeId.md) |  |
| [equalsValue](equalsValue.md) | `field` is kept when `whenField` equals this value, and removed otherwise |
| [errorCodes](errorCodes.md) |  |
| [escalationDelaySeconds](escalationDelaySeconds.md) |  |
| [estimatedCostEur](estimatedCostEur.md) |  |
| [evaluatedAt](evaluatedAt.md) |  |
| [evaluationCriteria](evaluationCriteria.md) |  |
| [evaluatorIdentity](evaluatorIdentity.md) |  |
| [eventKind](eventKind.md) |  |
| [eventSha256](eventSha256.md) |  |
| [eventType](eventType.md) |  |
| [evidenceDigest](evidenceDigest.md) |  |
| [evidenceMaxAge](evidenceMaxAge.md) | Maximum age of the Forge protection observation before an autonomy gate must ... |
| [evidenceRef](evidenceRef.md) |  |
| [evidenceRefs](evidenceRefs.md) |  |
| [evidenceType](evidenceType.md) |  |
| [executedAt](executedAt.md) |  |
| [executionCellLeaseRef](executionCellLeaseRef.md) |  |
| [executionCellRef](executionCellRef.md) |  |
| [executionMachineRef](executionMachineRef.md) |  |
| [executionState](executionState.md) |  |
| [executionTimeMs](executionTimeMs.md) |  |
| [exitCode](exitCode.md) |  |
| [exitCondition](exitCondition.md) |  |
| [exitWindowDays](exitWindowDays.md) |  |
| [expectedMaximum](expectedMaximum.md) |  |
| [expectedOutputDigest](expectedOutputDigest.md) |  |
| [expectedTreeDigest](expectedTreeDigest.md) |  |
| [expiresAfter](expiresAfter.md) |  |
| [expiresAt](expiresAt.md) |  |
| [export](export.md) |  |
| [exports](exports.md) |  |
| [exposedName](exposedName.md) |  |
| [exposure](exposure.md) | Realm exposure posture |
| [externalId](externalId.md) |  |
| [externalSchemaDigest](externalSchemaDigest.md) |  |
| [externalVersion](externalVersion.md) |  |
| [facets](facets.md) |  |
| [facts](facts.md) |  |
| [fallbackDelaySeconds](fallbackDelaySeconds.md) |  |
| [fallbackFlowRef](fallbackFlowRef.md) |  |
| [federatedPeerRef](federatedPeerRef.md) | Required when kind is FEDERATED_PEER |
| [federationProfileRefs](federationProfileRefs.md) |  |
| [field](field.md) |  |
| [fieldConditions](fieldConditions.md) | Fields the emitted document carries only under a declared condition |
| [fieldDefaults](fieldDefaults.md) | Values used when a field was not collected, so a template needs no conditiona... |
| [fieldName](fieldName.md) |  |
| [fields](fields.md) |  |
| [fileName](fileName.md) |  |
| [files](files.md) |  |
| [finding](finding.md) |  |
| [firstResponseTargetBusinessDays](firstResponseTargetBusinessDays.md) |  |
| [firstRunMandatory](firstRunMandatory.md) |  |
| [flows](flows.md) |  |
| [focusMode](focusMode.md) |  |
| [forbidden](forbidden.md) |  |
| [form](form.md) |  |
| [format](format.md) |  |
| [frameworkName](frameworkName.md) |  |
| [free](free.md) |  |
| [from](from.md) | Deterministic source: a contract kind and path such as 'Project |
| [fromField](fromField.md) |  |
| [gate](gate.md) |  |
| [gatewayMode](gatewayMode.md) |  |
| [gatewayRef](gatewayRef.md) | Required when mode is GATEWAY_ROUTED; forbidden when PLAN_DIRECT (Rego) |
| [gatewayRole](gatewayRole.md) |  |
| [gitCommitSha](gitCommitSha.md) |  |
| [gitLfsPointers](gitLfsPointers.md) |  |
| [goldenTaskSetRefs](goldenTaskSetRefs.md) |  |
| [grantedAt](grantedAt.md) |  |
| [grantedCapabilities](grantedCapabilities.md) |  |
| [grantedOperationRefs](grantedOperationRefs.md) | The only external reach available to the substrate |
| [grantedScopes](grantedScopes.md) |  |
| [grantId](grantId.md) |  |
| [grantIds](grantIds.md) |  |
| [guidedMinutes](guidedMinutes.md) |  |
| [handlerModuleRef](handlerModuleRef.md) |  |
| [handoff](handoff.md) |  |
| [hardCap](hardCap.md) |  |
| [helpI18nKey](helpI18nKey.md) |  |
| [heroImage](heroImage.md) |  |
| [historyRetention](historyRetention.md) |  |
| [holder](holder.md) |  |
| [holderOperated](holderOperated.md) |  |
| [holderRef](holderRef.md) |  |
| [homeState](homeState.md) | A mounted CLI home carries native connectors, consent history and trusted fol... |
| [hostDeclaredByAccount](hostDeclaredByAccount.md) | True only for a generic platform (e |
| [hostDefinitionRef](hostDefinitionRef.md) |  |
| [hostname](hostname.md) |  |
| [humanSeat](humanSeat.md) | True for the human-owner seat, which is never filled by an AgentDefinition be... |
| [i18nKey](i18nKey.md) | Resolved the same way a ProjectionField's own i18nKey is, so a step rendered ... |
| [icon](icon.md) | Display icon for this journey |
| [id](id.md) | Target contract identifier |
| [idempotency](idempotency.md) |  |
| [idempotencyKey](idempotencyKey.md) | Required on a SERVICE step whose capability producesExternalEffect (Rego) |
| [identifier](identifier.md) |  |
| [identity](identity.md) |  |
| [identityType](identityType.md) |  |
| [identityValue](identityValue.md) |  |
| [image](image.md) | Step-level hero image, overriding the journey's heroImage for this step only |
| [imageDigest](imageDigest.md) |  |
| [immediateAnswerMaySatisfy](immediateAnswerMaySatisfy.md) | Source schema pins this to `const: true`; enforced in Rego |
| [improvementLoopRef](improvementLoopRef.md) |  |
| [includedCreditEur](includedCreditEur.md) |  |
| [includes](includes.md) |  |
| [incompatibleSeatPairs](incompatibleSeatPairs.md) | Seats that may never be filled by the same RoleAssignment bearer (e |
| [independenceGroup](independenceGroup.md) | A role's own separation-of-duties group |
| [independentSeatGroups](independentSeatGroups.md) | Seats whose bearers must sit in different independence groups (e |
| [independentVerification](independentVerification.md) | Optional, additive claim distinct from branchProtection |
| [independentVerificationEvidenceMaxAge](independentVerificationEvidenceMaxAge.md) | Maximum age of the independent-verification observation before its ENFORCED c... |
| [independentVerificationEvidenceRef](independentVerificationEvidenceRef.md) |  |
| [independentVerificationObservedAt](independentVerificationObservedAt.md) |  |
| [ingress](ingress.md) | Optional per-tenant subdomain routing |
| [injection](injection.md) |  |
| [inputBinding](inputBinding.md) |  |
| [inputDigest](inputDigest.md) |  |
| [inputPayload](inputPayload.md) |  |
| [inputSchema](inputSchema.md) |  |
| [inputSchemaRef](inputSchemaRef.md) |  |
| [inputSha256](inputSha256.md) |  |
| [inputType](inputType.md) |  |
| [inspiresPolicies](inspiresPolicies.md) | A principle may inspire a policy, but the policy must be explicit and reviewa... |
| [installability](installability.md) |  |
| [installationId](installationId.md) |  |
| [installCommand](installCommand.md) |  |
| [installedAt](installedAt.md) |  |
| [installedCliRefs](installedCliRefs.md) |  |
| [installedConnectorRefs](installedConnectorRefs.md) |  |
| [installedReleaseRef](installedReleaseRef.md) |  |
| [instance](instance.md) |  |
| [instruction](instruction.md) |  |
| [intakeProcessSpecRef](intakeProcessSpecRef.md) |  |
| [intent](intent.md) |  |
| [intentKinds](intentKinds.md) |  |
| [interaction](interaction.md) |  |
| [internalUsePerpetual](internalUsePerpetual.md) |  |
| [interruptibility](interruptibility.md) |  |
| [interruptible](interruptible.md) |  |
| [inventoryDigest](inventoryDigest.md) |  |
| [invocationCommand](invocationCommand.md) |  |
| [invocationId](invocationId.md) |  |
| [ipAllocation](ipAllocation.md) |  |
| [isMetaRole](isMetaRole.md) | When true, this role acts on behalf of a Jumo Control Plane or Child Realm |
| [isolation](isolation.md) |  |
| [issuedAt](issuedAt.md) |  |
| [issuer](issuer.md) |  |
| [itemPath](itemPath.md) | For a multivalued field, the key inside each item that carries the reference |
| [itemReferenceKind](itemReferenceKind.md) | When the collected item is a plain reference id rather than an object (an ENT... |
| [itemValidations](itemValidations.md) | Checks applied to each item, naming a key of the item rather than a field of ... |
| [javaType](javaType.md) | Fully qualified target type for STRUCTURED output |
| [jitter](jitter.md) |  |
| [journeyId](journeyId.md) |  |
| [journeyRunId](journeyRunId.md) |  |
| [jumoManaged](jumoManaged.md) |  |
| [justification](justification.md) |  |
| [jwksUri](jwksUri.md) |  |
| [kernelVersion](kernelVersion.md) |  |
| [key](key.md) |  |
| [keycloak](keycloak.md) |  |
| [keys](keys.md) | The keys each emitted item carries, in the order the document declares them |
| [killSwitchRef](killSwitchRef.md) | Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-... |
| [kind](kind.md) | Declared Git-contract kind |
| [kit](kit.md) |  |
| [kitBindingRef](kitBindingRef.md) |  |
| [kitBindingRefs](kitBindingRefs.md) | Ordered list of kit bindings determining precedence |
| [kitReleaseCertificationRef](kitReleaseCertificationRef.md) |  |
| [kits](kits.md) |  |
| [label](label.md) |  |
| [labelPath](labelPath.md) | Dotted path, relative to each nested entry, used as the option's display titl... |
| [lang](lang.md) | ISO 639-1 code of the document's prose |
| [language](language.md) |  |
| [last_updated](last_updated.md) |  |
| [lastHeartbeatAt](lastHeartbeatAt.md) |  |
| [lastSuccessfulSyncAt](lastSuccessfulSyncAt.md) |  |
| [layer](layer.md) |  |
| [leadRoleDefinitionRef](leadRoleDefinitionRef.md) | Required when any mechanism binding uses DIRECT_SUPERVISION; must resolve to ... |
| [leaseId](leaseId.md) |  |
| [ledgerSourceRevision](ledgerSourceRevision.md) | Commit that carried the last full (pre-compaction) revision of this record, f... |
| [leftCatalogId](leftCatalogId.md) |  |
| [licenceDigest](licenceDigest.md) |  |
| [license](license.md) |  |
| [lifecycle](lifecycle.md) |  |
| [lifetimeUnique](lifetimeUnique.md) |  |
| [limit](limit.md) |  |
| [limits](limits.md) |  |
| [linuxCapabilities](linuxCapabilities.md) |  |
| [list](list.md) |  |
| [localProtocol](localProtocol.md) |  |
| [loginCommand](loginCommand.md) |  |
| [loopMaximum](loopMaximum.md) |  |
| [macAddress](macAddress.md) |  |
| [machineId](machineId.md) |  |
| [machineRef](machineRef.md) |  |
| [mandatoryObligations](mandatoryObligations.md) |  |
| [manifestDigest](manifestDigest.md) |  |
| [manifestPath](manifestPath.md) |  |
| [mappings](mappings.md) |  |
| [match](match.md) |  |
| [maximumAge](maximumAge.md) |  |
| [maximumAudience](maximumAudience.md) | Widest audience any document under this root may claim |
| [maximumConcurrentSolicitations](maximumConcurrentSolicitations.md) |  |
| [maximumCostClass](maximumCostClass.md) |  |
| [maximumDelay](maximumDelay.md) |  |
| [maximumDuration](maximumDuration.md) |  |
| [maximumEvaluationAge](maximumEvaluationAge.md) |  |
| [maximumGrantDuration](maximumGrantDuration.md) |  |
| [maximumLatency](maximumLatency.md) |  |
| [maximumLiveInterruptionsPerHour](maximumLiveInterruptionsPerHour.md) |  |
| [maximumMedianSupportMinutesPerCustomerMonth](maximumMedianSupportMinutesPerCustomerMonth.md) |  |
| [maximumOpenRecommendations](maximumOpenRecommendations.md) |  |
| [maximumTurns](maximumTurns.md) |  |
| [maxOutputTokens](maxOutputTokens.md) |  |
| [maxPublishedRealms](maxPublishedRealms.md) |  |
| [maxRing](maxRing.md) |  |
| [maxTrialDurationDays](maxTrialDurationDays.md) |  |
| [mayProposeCapabilities](mayProposeCapabilities.md) | Enforced as a subset of the owning AgentDefinition's requestedCapabilities (R... |
| [mayRaiseCorpusCeiling](mayRaiseCorpusCeiling.md) |  |
| [mcpBundleRef](mcpBundleRef.md) |  |
| [mcpRegistrySourceRef](mcpRegistrySourceRef.md) |  |
| [measure](measure.md) |  |
| [measures](measures.md) |  |
| [mechanism](mechanism.md) |  |
| [mechanisms](mechanisms.md) |  |
| [mediaType](mediaType.md) |  |
| [memberConnectorRefs](memberConnectorRefs.md) |  |
| [memberRealmIds](memberRealmIds.md) |  |
| [members](members.md) |  |
| [memory](memory.md) |  |
| [memoryBytes](memoryBytes.md) |  |
| [memoryUsagePercent](memoryUsagePercent.md) |  |
| [mergeCapabilityRef](mergeCapabilityRef.md) | Required when autonomy is BOUNDED_AUTONOMOUS (Rego) |
| [messages](messages.md) |  |
| [metadata](metadata.md) |  |
| [method](method.md) |  |
| [methodologySource](methodologySource.md) |  |
| [milestones](milestones.md) | Declared in delivery order |
| [minimumAssurance](minimumAssurance.md) |  |
| [minimumCycles](minimumCycles.md) |  |
| [minimumDirectMarginPercent](minimumDirectMarginPercent.md) |  |
| [minimumItems](minimumItems.md) |  |
| [minimumJumoVersion](minimumJumoVersion.md) |  |
| [minimumLength](minimumLength.md) |  |
| [minimumPayingCustomers](minimumPayingCustomers.md) |  |
| [minimumReliability](minimumReliability.md) |  |
| [minimumRenewals](minimumRenewals.md) |  |
| [minimumTaskHorizon](minimumTaskHorizon.md) |  |
| [minimumTermMonths](minimumTermMonths.md) |  |
| [minimumTokens](minimumTokens.md) |  |
| [mission](mission.md) |  |
| [mitigations](mitigations.md) |  |
| [modalities](modalities.md) |  |
| [mode](mode.md) |  |
| [modelAccess](modelAccess.md) |  |
| [modelAlias](modelAlias.md) |  |
| [modelCalls](modelCalls.md) |  |
| [modelCatalogPath](modelCatalogPath.md) |  |
| [modelClass](modelClass.md) |  |
| [modificationRing](modificationRing.md) |  |
| [modify](modify.md) |  |
| [moduleDigests](moduleDigests.md) |  |
| [moduleId](moduleId.md) |  |
| [modules](modules.md) |  |
| [monthlyFeeExVatEur](monthlyFeeExVatEur.md) |  |
| [motion](motion.md) |  |
| [mountedPersonalSpaceRefs](mountedPersonalSpaceRefs.md) | PersonalSpace documents mounted into this cell's private workspace filesystem |
| [mtls](mtls.md) |  |
| [name](name.md) |  |
| [namespace](namespace.md) | Target logical namespace |
| [narrationI18nKey](narrationI18nKey.md) | i18n key resolving this step's personaNarration ("Nestor's voice") |
| [narrationPromptTemplateRef](narrationPromptTemplateRef.md) | Optional PromptTemplate that phrases the extracted facts |
| [nativeEffort](nativeEffort.md) |  |
| [nativeToolAuthority](nativeToolAuthority.md) | CLI-native connectors and MCP servers are disabled so the fact is reviewable ... |
| [navigationMode](navigationMode.md) | FREE permits navigation among dependency-ready steps; dependencies remain man... |
| [necessityAndProportionality](necessityAndProportionality.md) |  |
| [network](network.md) |  |
| [nextCertificateSha256](nextCertificateSha256.md) |  |
| [nextEligibleSync](nextEligibleSync.md) |  |
| [nickname](nickname.md) |  |
| [normative](normative.md) | Whether this document states rules |
| [notifications](notifications.md) |  |
| [oauthSecretBindingRef](oauthSecretBindingRef.md) |  |
| [objectForms](objectForms.md) | Themed representation by business entity key -- the business term stays visib... |
| [obligations](obligations.md) |  |
| [observationChecksum](observationChecksum.md) |  |
| [observationProvenance](observationProvenance.md) |  |
| [observedAt](observedAt.md) |  |
| [observedFrom](observedFrom.md) |  |
| [occurredAt](occurredAt.md) |  |
| [ociImage](ociImage.md) |  |
| [of](of.md) | A generated LinkML class name (metamodel/generated/manifest |
| [officialUri](officialUri.md) | Stable URI to the official referential |
| [oidcRealm](oidcRealm.md) |  |
| [oidcSubject](oidcSubject.md) |  |
| [onboarding](onboarding.md) |  |
| [onExhaustion](onExhaustion.md) |  |
| [onInsufficientInformation](onInsufficientInformation.md) |  |
| [opaEntrypoint](opaEntrypoint.md) | Required on a GATEWAY step (Rego): the Rego rule the ProcessSpec compiler wir... |
| [openBao](openBao.md) |  |
| [openQuestion](openQuestion.md) | A clarifying question to continue the dialogue when intent is still ambiguous |
| [operationId](operationId.md) |  |
| [operationRef](operationRef.md) |  |
| [operations](operations.md) |  |
| [optInRequired](optInRequired.md) |  |
| [optionalKeys](optionalKeys.md) | Keys carried only when the collected item supplies a non-blank value |
| [optionsEligibility](optionsEligibility.md) | Conditions every instance of `optionsFrom` must satisfy to be offered |
| [optionsFrom](optionsFrom.md) | A contract kind whose declared instances populate this field's options, repla... |
| [optionsFromEnum](optionsFromEnum.md) | A generated LinkML enumeration whose permissible values populate this field's... |
| [optionsFromNested](optionsFromNested.md) | An alternative to optionsFrom for a value object with no standalone Git contr... |
| [order](order.md) | Delivery order |
| [organizationRef](organizationRef.md) |  |
| [organizationTemplateRef](organizationTemplateRef.md) | Optional OrganizationTemplate this organization was instantiated from |
| [origin](origin.md) |  |
| [osName](osName.md) |  |
| [osVersion](osVersion.md) |  |
| [otherwise](otherwise.md) |  |
| [outboundControlUrl](outboundControlUrl.md) |  |
| [outcome](outcome.md) |  |
| [output](output.md) |  |
| [outputBinding](outputBinding.md) |  |
| [outputSchema](outputSchema.md) |  |
| [outputSchemaRef](outputSchemaRef.md) |  |
| [outputType](outputType.md) |  |
| [overage](overage.md) |  |
| [overrides](overrides.md) |  |
| [owner](owner.md) | The canonical owner Principal |
| [ownerApproved](ownerApproved.md) |  |
| [ownerApproverRef](ownerApproverRef.md) |  |
| [ownerPrincipal](ownerPrincipal.md) | Principal (user or agent) owning this personal space |
| [ownerPrincipalId](ownerPrincipalId.md) |  |
| [ownerRealm](ownerRealm.md) |  |
| [ownership](ownership.md) |  |
| [packageDigest](packageDigest.md) | SHA-256 of the package's content manifest |
| [pairedGatewayRef](pairedGatewayRef.md) |  |
| [pairingMethod](pairingMethod.md) |  |
| [palette](palette.md) |  |
| [parallelizable](parallelizable.md) | Marks a dependency-ready step as part of a parallelizable work group in the r... |
| [parentWorkOrderRef](parentWorkOrderRef.md) | The larger item this decomposes |
| [path](path.md) | Repository-relative directory |
| [pathGlob](pathGlob.md) | Path-traversal exclusion (`not: pattern  |
| [pathScope](pathScope.md) | Glob patterns the work may touch |
| [pathTemplate](pathTemplate.md) | Where the document is written, with ${id} standing for the resolved identifie... |
| [pattern](pattern.md) |  |
| [payload](payload.md) |  |
| [payloadDigest](payloadDigest.md) |  |
| [payloadJson](payloadJson.md) |  |
| [payloadSchemaRef](payloadSchemaRef.md) | A JSON Schema 2020-12 document declared under a corpus schemas directory (e |
| [payloadType](payloadType.md) | A generated LinkML class name; every edge carries an explicit typed payload |
| [peerCertificateSha256](peerCertificateSha256.md) |  |
| [peerKeyId](peerKeyId.md) |  |
| [peerPublicKeySha256](peerPublicKeySha256.md) |  |
| [peerRealm](peerRealm.md) |  |
| [personalSpaceRef](personalSpaceRef.md) | Present only for OWNER and MEMBER |
| [personalSpaces](personalSpaces.md) |  |
| [personaNarration](personaNarration.md) |  |
| [phase](phase.md) | Open vocabulary naming the work phase this binding applies to |
| [pids](pids.md) |  |
| [placement](placement.md) |  |
| [planDigest](planDigest.md) |  |
| [planExpiresAt](planExpiresAt.md) |  |
| [planId](planId.md) |  |
| [planSignature](planSignature.md) |  |
| [platform](platform.md) |  |
| [platformRef](platformRef.md) | The ProviderPlatform catalog entry this account was opened against |
| [playbookDigest](playbookDigest.md) |  |
| [playbookPath](playbookPath.md) |  |
| [playbookRef](playbookRef.md) |  |
| [pluralEn](pluralEn.md) |  |
| [pluralFr](pluralFr.md) |  |
| [policyRevision](policyRevision.md) |  |
| [policySetRefs](policySetRefs.md) | Relative paths to PolicySet documents |
| [postgresql](postgresql.md) |  |
| [practiceRefs](practiceRefs.md) |  |
| [preconditions](preconditions.md) |  |
| [preferDeterministicRouting](preferDeterministicRouting.md) |  |
| [preferencesRef](preferencesRef.md) |  |
| [preferredTransports](preferredTransports.md) |  |
| [premium](premium.md) |  |
| [presence](presence.md) |  |
| [presenceRef](presenceRef.md) | Optional ThemePack terminology key |
| [present](present.md) | The value at `path` must be present and non-empty |
| [pricing](pricing.md) |  |
| [primaryLanguage](primaryLanguage.md) |  |
| [principal](principal.md) |  |
| [principalId](principalId.md) |  |
| [principalKind](principalKind.md) | OWNER and MEMBER may hold a PersonalSpace and bear RoleDefinitions; a CONTACT... |
| [principalRef](principalRef.md) |  |
| [principles](principles.md) |  |
| [principleSetRefs](principleSetRefs.md) | Relative paths to PrincipleSet documents |
| [priority](priority.md) | Deterministic account selection order for a compatible worker requirement pro... |
| [privilegeEscalation](privilegeEscalation.md) |  |
| [processId](processId.md) |  |
| [processingRegister](processingRegister.md) | RGPD art |
| [processSpecRef](processSpecRef.md) | Exact metadata id of the retained TIMER-triggered ProcessSpec release this Pr... |
| [processVersion](processVersion.md) |  |
| [producerRoleDefinitionRef](producerRoleDefinitionRef.md) | The individual accountable role |
| [producesExternalEffect](producesExternalEffect.md) |  |
| [profile](profile.md) |  |
| [profileId](profileId.md) |  |
| [profileName](profileName.md) |  |
| [profiles](profiles.md) |  |
| [prohibitedAuthority](prohibitedAuthority.md) |  |
| [projectedToolAuthority](projectedToolAuthority.md) | Tool capabilities are dynamically projected by the Jumo capability gateway vi... |
| [projectField](projectField.md) |  |
| [projectId](projectId.md) |  |
| [projectionKind](projectionKind.md) |  |
| [projectionSpecRef](projectionSpecRef.md) | The ProjectionSpec this step renders |
| [projectRef](projectRef.md) |  |
| [prompt](prompt.md) |  |
| [promptTemplateRef](promptTemplateRef.md) |  |
| [proposedLinkmlClass](proposedLinkmlClass.md) |  |
| [proposes](proposes.md) |  |
| [protocol](protocol.md) |  |
| [protocolVersion](protocolVersion.md) |  |
| [provenance](provenance.md) |  |
| [provenanceDigest](provenanceDigest.md) |  |
| [provenancePins](provenancePins.md) |  |
| [provider](provider.md) |  |
| [providerAccountRef](providerAccountRef.md) |  |
| [providerMarkupPercent](providerMarkupPercent.md) |  |
| [publicHandle](publicHandle.md) |  |
| [publicKey](publicKey.md) |  |
| [publisher](publisher.md) |  |
| [purpose](purpose.md) | Folded in from the retired ProjectContract kind (owner decision O3, 2026-08-2... |
| [qualification](qualification.md) |  |
| [quality](quality.md) |  |
| [question](question.md) |  |
| [quietHours](quietHours.md) |  |
| [quietHoursEnabled](quietHoursEnabled.md) |  |
| [quotaSupport](quotaSupport.md) |  |
| [quotaWindow](quotaWindow.md) |  |
| [raisedAt](raisedAt.md) |  |
| [rationale](rationale.md) | One entry per selectedConnectorRefs, explaining the match to the stated inten... |
| [reads](reads.md) |  |
| [realmCell](realmCell.md) |  |
| [realmId](realmId.md) |  |
| [realmProvisionerProjectionSpecRef](realmProvisionerProjectionSpecRef.md) | Approved bounded provisioner for self-enrolled Realm creation; never a federa... |
| [realmRef](realmRef.md) |  |
| [realmRepositoryTemplate](realmRepositoryTemplate.md) |  |
| [reason](reason.md) |  |
| [reasonCode](reasonCode.md) | Sanitized code safe to expose across a Realm boundary (canonical decision 66) |
| [reasoningEffort](reasoningEffort.md) |  |
| [recommendationExpiry](recommendationExpiry.md) |  |
| [reconciliation](reconciliation.md) |  |
| [recoveryPlanDigest](recoveryPlanDigest.md) | Required in Rego when effect is SYSTEM_EFFECT and the bundle is ENABLED (ADR-... |
| [recurringAdvice](recurringAdvice.md) |  |
| [redactBeyondBoundary](redactBeyondBoundary.md) |  |
| [redistribution](redistribution.md) |  |
| [reference](reference.md) |  |
| [referenceChecks](referenceChecks.md) | Checks that a collected value names a contract that exists, so a journey neve... |
| [referentialArticle](referentialArticle.md) | e |
| [rejectReason](rejectReason.md) |  |
| [relatedCommitments](relatedCommitments.md) |  |
| [release](release.md) |  |
| [releaseDigest](releaseDigest.md) |  |
| [releaseRef](releaseRef.md) |  |
| [relevance](relevance.md) | Whether each exposed operation maps to a capability this Realm already declar... |
| [remaining](remaining.md) |  |
| [remoteMcpAppraisalRef](remoteMcpAppraisalRef.md) |  |
| [remoteMcpServiceRef](remoteMcpServiceRef.md) |  |
| [remoteRoleKey](remoteRoleKey.md) | Optional remote role identifier in the peer realm |
| [rendered](rendered.md) |  |
| [renderedAssets](renderedAssets.md) | Provenance for assetExports (JumoKitSpec) admitted by this release, if any |
| [renderedBy](renderedBy.md) | The id of an InterfaceSurface `Surface` this projection is scoped to |
| [renders](renders.md) | The contract kind this template produces, checked against the emission that n... |
| [repository](repository.md) | owner/name |
| [repositoryBindings](repositoryBindings.md) | Zero or more Git resources governed by this Project |
| [representation](representation.md) |  |
| [requestBinding](requestBinding.md) |  |
| [requestedCapabilities](requestedCapabilities.md) | A request, not a grant |
| [requestedResponse](requestedResponse.md) |  |
| [requestsPerMonth](requestsPerMonth.md) |  |
| [required](required.md) |  |
| [requiredFields](requiredFields.md) | One entry per field the step collects or confirms, each carrying the i18n key... |
| [requiredFreshness](requiredFreshness.md) |  |
| [requiredIndependence](requiredIndependence.md) |  |
| [requiredIndependenceGroup](requiredIndependenceGroup.md) | Narrows eligible ProviderAccounts to those sharing this independenceGroup (ow... |
| [requiredObligations](requiredObligations.md) |  |
| [requiredOwners](requiredOwners.md) |  |
| [requiredScopes](requiredScopes.md) |  |
| [requiresAdapter](requiresAdapter.md) |  |
| [resaleSaaS](resaleSaaS.md) |  |
| [resetAt](resetAt.md) |  |
| [resource](resource.md) |  |
| [resourceBudgetRef](resourceBudgetRef.md) |  |
| [responseBindings](responseBindings.md) |  |
| [responsibilities](responsibilities.md) |  |
| [retention](retention.md) |  |
| [retire](retire.md) |  |
| [retrieval](retrieval.md) |  |
| [reversibility](reversibility.md) |  |
| [reversible](reversible.md) | Whether the effect can be inspected, corrected and undone |
| [reviewedAt](reviewedAt.md) |  |
| [reviewer](reviewer.md) |  |
| [revision](revision.md) |  |
| [rhythm](rhythm.md) |  |
| [rightCatalogId](rightCatalogId.md) |  |
| [ring](ring.md) | The ring this work acts on |
| [ringCeiling](ringCeiling.md) | Highest-blast-radius ring this capability may ever act on |
| [risksToDataSubjects](risksToDataSubjects.md) |  |
| [riskTier](riskTier.md) | Open vocabulary; aligns with ActionCapabilitySet's riskTier where relevant |
| [roadmapRef](roadmapRef.md) | Groups durable work contracts into a generated roadmap projection |
| [role](role.md) |  |
| [roleDefinitionRef](roleDefinitionRef.md) |  |
| [roleId](roleId.md) | The individual acting role this came from, never a team (ADR-0017) |
| [roleKey](roleKey.md) | Optional decorative ThemePack lookup key |
| [roleLifecyclePolicyRef](roleLifecyclePolicyRef.md) |  |
| [roleOverrides](roleOverrides.md) |  |
| [roleRefs](roleRefs.md) | References RoleDefinition entries this organization uses, each bound to a nam... |
| [roles](roles.md) |  |
| [rollbackPayload](rollbackPayload.md) |  |
| [roomId](roomId.md) |  |
| [rooms](rooms.md) | Illustrated room decor keyed by surface id (ADR-0087) |
| [rootFilesystem](rootFilesystem.md) |  |
| [roots](roots.md) |  |
| [rotation](rotation.md) |  |
| [routing](routing.md) |  |
| [routingDecisionRef](routingDecisionRef.md) |  |
| [routingEligibilityCheck](routingEligibilityCheck.md) | Refuses a proposal that would route work to a team the project did not declar... |
| [rules](rules.md) |  |
| [rung](rung.md) | Matches a WorkerRequirementProfile |
| [runtime](runtime.md) |  |
| [runtimeImageDigest](runtimeImageDigest.md) |  |
| [runtimeRef](runtimeRef.md) | Polymorphic on the sibling `kind` field (CLI or connector) -- resolves to a C... |
| [sanitizedEvidence](sanitizedEvidence.md) |  |
| [sanitizedOutputPayload](sanitizedOutputPayload.md) |  |
| [sbomDigest](sbomDigest.md) |  |
| [sbomRef](sbomRef.md) |  |
| [schemaBinding](schemaBinding.md) |  |
| [schemaDigest](schemaDigest.md) |  |
| [schemaId](schemaId.md) |  |
| [schemaRef](schemaRef.md) |  |
| [schemaVersion](schemaVersion.md) |  |
| [scope](scope.md) | A lower scope may restrict but never silently expand a higher one (canonical ... |
| [score](score.md) |  |
| [seatId](seatId.md) | A named seat in this organization, e |
| [seatIds](seatIds.md) |  |
| [secretBindingRef](secretBindingRef.md) |  |
| [secretBindingRefs](secretBindingRefs.md) |  |
| [sections](sections.md) |  |
| [security](security.md) | Blast radius per operation, network egress, secret material held, and untrust... |
| [selectedAt](selectedAt.md) |  |
| [selectedConnectorDefinitionRefs](selectedConnectorDefinitionRefs.md) | ConnectorDefinition ids proposed, referencing the supplied catalog only |
| [selectedName](selectedName.md) |  |
| [selectionRuleVersion](selectionRuleVersion.md) |  |
| [selfEnrollmentEnabled](selfEnrollmentEnabled.md) |  |
| [semanticProfile](semanticProfile.md) |  |
| [semanticStage](semanticStage.md) | The WorkflowDeclaration-era stage this step corresponds to, where applicable |
| [semanticTools](semanticTools.md) |  |
| [sequence](sequence.md) |  |
| [serverId](serverId.md) |  |
| [serverName](serverName.md) |  |
| [serverVersion](serverVersion.md) |  |
| [sessionFingerprint](sessionFingerprint.md) |  |
| [sessionId](sessionId.md) |  |
| [setupFeeExVatEur](setupFeeExVatEur.md) |  |
| [shadowEpisodesRequired](shadowEpisodesRequired.md) |  |
| [signalType](signalType.md) | Required on USER and MESSAGE signals; resolves to a generated LinkML class |
| [signature](signature.md) |  |
| [signatureDigest](signatureDigest.md) |  |
| [signatureRef](signatureRef.md) |  |
| [signedBy](signedBy.md) |  |
| [signing](signing.md) |  |
| [signingKeyName](signingKeyName.md) |  |
| [skills](skills.md) |  |
| [sla](sla.md) |  |
| [source](source.md) |  |
| [sourceCommitSha](sourceCommitSha.md) |  |
| [sourceDependence](sourceDependence.md) |  |
| [sourceId](sourceId.md) |  |
| [sourceKind](sourceKind.md) | The declared ContractKind holding the nested list |
| [sourcePath](sourcePath.md) |  |
| [sourcePaths](sourcePaths.md) |  |
| [sourceRef](sourceRef.md) |  |
| [sourceRefs](sourceRefs.md) |  |
| [sourceRepository](sourceRepository.md) |  |
| [sourceType](sourceType.md) |  |
| [sourceVisibility](sourceVisibility.md) |  |
| [span](span.md) |  |
| [spec](spec.md) |  |
| [specification](specification.md) | Long-form design lots too large for purpose/condition/acceptanceCriteria -- M... |
| [spheres](spheres.md) |  |
| [stages](stages.md) |  |
| [stageWorkerRequirementRef](stageWorkerRequirementRef.md) | Task requirements per model-using step (source schema's open string-keyed map... |
| [stale_after](stale_after.md) |  |
| [staleAt](staleAt.md) |  |
| [start](start.md) |  |
| [startedAt](startedAt.md) |  |
| [startTrigger](startTrigger.md) |  |
| [state](state.md) |  |
| [statement](statement.md) |  |
| [status](status.md) |  |
| [statusCode](statusCode.md) |  |
| [statusPracticeRef](statusPracticeRef.md) |  |
| [stepId](stepId.md) |  |
| [stepKind](stepKind.md) | Required from the model-driven renderer onward (Rego) |
| [steps](steps.md) |  |
| [stepUpProof](stepUpProof.md) |  |
| [storagePool](storagePool.md) |  |
| [storageQuotaBytes](storageQuotaBytes.md) |  |
| [streamingEventFormat](streamingEventFormat.md) |  |
| [strong](strong.md) |  |
| [structuredOutput](structuredOutput.md) |  |
| [structuredOutputMode](structuredOutputMode.md) |  |
| [style](style.md) |  |
| [subAssistedJourneyRef](subAssistedJourneyRef.md) | The AssistedJourney this step delegates to when stepKind is SUB_JOURNEY |
| [subdomain](subdomain.md) | DNS label distinguishing this Realm's hostname under baseDomain |
| [subject](subject.md) |  |
| [subjectKind](subjectKind.md) |  |
| [subjectRef](subjectRef.md) |  |
| [subprocessReleaseRef](subprocessReleaseRef.md) | The exact ProcessSpec release this SUBPROCESS step invokes (Rego required-on-... |
| [subscriptionAudience](subscriptionAudience.md) |  |
| [substrate](substrate.md) |  |
| [suffix](suffix.md) |  |
| [summaryI18nKey](summaryI18nKey.md) | Prefix JourneySummaryStep |
| [superseded_by](superseded_by.md) |  |
| [supersededBy](supersededBy.md) |  |
| [supersedes](supersedes.md) |  |
| [supersedesDecisionRef](supersedesDecisionRef.md) |  |
| [support](support.md) |  |
| [supportedAdapterProfiles](supportedAdapterProfiles.md) |  |
| [supportedTransportDigests](supportedTransportDigests.md) | One digest per McpServerDescriptor in the certified package's supportedTransp... |
| [supportedTransports](supportedTransports.md) |  |
| [supportRequireSubscription](supportRequireSubscription.md) |  |
| [surfaceId](surfaceId.md) |  |
| [surfaces](surfaces.md) |  |
| [suspendedReason](suspendedReason.md) | Set when state is PROPOSED after having been ACCEPTED or IN_PROGRESS, to reco... |
| [syncMode](syncMode.md) |  |
| [synthesisPracticeRef](synthesisPracticeRef.md) |  |
| [system](system.md) |  |
| [systemInventory](systemInventory.md) |  |
| [systemLoad](systemLoad.md) |  |
| [target](target.md) |  |
| [targetDigest](targetDigest.md) |  |
| [targetKind](targetKind.md) | The contract kind the emitted document declares |
| [targetMachineRef](targetMachineRef.md) |  |
| [targetPath](targetPath.md) |  |
| [targetProject](targetProject.md) |  |
| [targets](targets.md) |  |
| [targetType](targetType.md) |  |
| [taskClass](taskClass.md) |  |
| [taskClasses](taskClasses.md) |  |
| [teamField](teamField.md) |  |
| [teams](teams.md) |  |
| [teamSpecRef](teamSpecRef.md) |  |
| [template](template.md) |  |
| [temporal](temporal.md) |  |
| [terminalDataRetention](terminalDataRetention.md) |  |
| [terminalState](terminalState.md) | Required on END and forbidden elsewhere |
| [termination](termination.md) |  |
| [terminology](terminology.md) | Display names by role key, such as chiefOfStaff or securityAgent |
| [termsApprovalRef](termsApprovalRef.md) |  |
| [termsReview](termsReview.md) |  |
| [testCaseId](testCaseId.md) |  |
| [testCases](testCases.md) |  |
| [testDigest](testDigest.md) |  |
| [testPlanRefs](testPlanRefs.md) |  |
| [theme](theme.md) |  |
| [thinkingBudgetTokens](thinkingBudgetTokens.md) | Native thinking-token budget for a protocol that exposes one (Anthropic exten... |
| [timeoutSeconds](timeoutSeconds.md) |  |
| [timerDelay](timerDelay.md) | Required only for TIMER starts; ISO-8601 duration rather than cron |
| [timestamp](timestamp.md) |  |
| [timezone](timezone.md) |  |
| [timeZone](timeZone.md) |  |
| [title](title.md) |  |
| [tlsRequired](tlsRequired.md) |  |
| [to](to.md) | A ProcessStep id in this same ProcessSpec |
| [token](token.md) |  |
| [tokenBudget](tokenBudget.md) |  |
| [tokenEndpoint](tokenEndpoint.md) |  |
| [tokens](tokens.md) |  |
| [tokensConsumed](tokensConsumed.md) |  |
| [tokensUsed](tokensUsed.md) |  |
| [toolCalls](toolCalls.md) |  |
| [toolName](toolName.md) |  |
| [toolRef](toolRef.md) |  |
| [tools](tools.md) |  |
| [toolsDigest](toolsDigest.md) |  |
| [toolUse](toolUse.md) |  |
| [topology](topology.md) |  |
| [trailer](trailer.md) |  |
| [transformationStrategy](transformationStrategy.md) |  |
| [transport](transport.md) |  |
| [triggers](triggers.md) |  |
| [trust](trust.md) |  |
| [trustClass](trustClass.md) |  |
| [turnLimit](turnLimit.md) |  |
| [type](type.md) |  |
| [unit](unit.md) |  |
| [untrustedOutput](untrustedOutput.md) | Whether this operation returns content originating outside the trust boundary |
| [upstreamHost](upstreamHost.md) | Required exactly when the referenced ProviderPlatform declares hostDeclaredBy... |
| [upstreamInventory](upstreamInventory.md) | Every tool the upstream server offered when it was looked at, exposed or not ... |
| [upstreamKind](upstreamKind.md) | Not schema-required -- the pinned jumo-core sibling source only gains this fi... |
| [upstreamToolName](upstreamToolName.md) |  |
| [urgency](urgency.md) |  |
| [url](url.md) |  |
| [usageContext](usageContext.md) | Licensing and entitlement fact only |
| [usePermissions](usePermissions.md) |  |
| [user](user.md) |  |
| [validated](validated.md) |  |
| [validation](validation.md) |  |
| [validations](validations.md) | Field-level checks the collected payload must pass before anything is written |
| [validFrom](validFrom.md) |  |
| [validUntil](validUntil.md) |  |
| [value](value.md) |  |
| [valueDigest](valueDigest.md) |  |
| [values](values.md) |  |
| [variables](variables.md) |  |
| [variablesSchemaId](variablesSchemaId.md) |  |
| [vatTreatment](vatTreatment.md) |  |
| [vaultSecretPath](vaultSecretPath.md) |  |
| [vcpuCount](vcpuCount.md) |  |
| [verbosity](verbosity.md) |  |
| [verdict](verdict.md) |  |
| [verificationSpecRef](verificationSpecRef.md) | Generic real observation required before this step can advance |
| [verified_at](verified_at.md) |  |
| [verifiedBy](verifiedBy.md) |  |
| [verifiedByRoleDefinitionRef](verifiedByRoleDefinitionRef.md) | The role that checked it, which is not the one that performed it |
| [verifierRoleDefinitionRef](verifierRoleDefinitionRef.md) | The role that checks the result against the criteria below |
| [version](version.md) |  |
| [visibility](visibility.md) |  |
| [visualization](visualization.md) |  |
| [voice](voice.md) |  |
| [wallClock](wallClock.md) |  |
| [when](when.md) | Named structural condition evaluated by the policy engine |
| [whenField](whenField.md) | The collected or derived value the presence of `field` depends on |
| [wireProtocol](wireProtocol.md) |  |
| [withdrawnAt](withdrawnAt.md) |  |
| [workerInvocationRef](workerInvocationRef.md) |  |
| [workerRequirementProfileRef](workerRequirementProfileRef.md) |  |
| [workOrderId](workOrderId.md) |  |
| [workOrderRef](workOrderRef.md) | No longer required (decision AC1) -- attribution for a new binding belongs on... |
| [workspace](workspace.md) |  |
| [workspacePath](workspacePath.md) |  |
| [writePaths](writePaths.md) |  |


## Enumerations

| Enumeration | Description |
| --- | --- |
| [AccessMode](AccessMode.md) |  |
| [AcknowledgementTrigger](AcknowledgementTrigger.md) |  |
| [AgentCardExposure](AgentCardExposure.md) |  |
| [AgentCardTransport](AgentCardTransport.md) |  |
| [ApiAudience](ApiAudience.md) | Audience and network exposure boundary for API surfaces and operations |
| [AppraisalDimensionOutcome](AppraisalDimensionOutcome.md) | CONCERN sits between PASS and FAIL so a reviewer can record something that di... |
| [AppraisalVerdict](AppraisalVerdict.md) | REFUSED is kept rather than deleted so a second submission of the same artifa... |
| [AssistedJourneyCompletionMode](AssistedJourneyCompletionMode.md) | Whether a journey emits a governed proposal or only records an observation |
| [AssistedJourneyConcurrencyPolicy](AssistedJourneyConcurrencyPolicy.md) |  |
| [AssistedJourneyIdentifierSuffix](AssistedJourneyIdentifierSuffix.md) | What is appended to a slugified identifier so two runs of the same journey do... |
| [AssistedJourneyNavigationMode](AssistedJourneyNavigationMode.md) | Whether the role may choose any dependency-ready step or must follow declarat... |
| [AssistedJourneyStepKind](AssistedJourneyStepKind.md) | The IHM-layer counterpart to ProcessStepKind (execution |
| [AssuranceLevel](AssuranceLevel.md) |  |
| [AttentionAdmissionReason](AttentionAdmissionReason.md) |  |
| [AttentionInterruptibility](AttentionInterruptibility.md) | Ordered least to most intrusive |
| [AttentionRequestedResponse](AttentionRequestedResponse.md) |  |
| [AttentionTargetSubjectKind](AttentionTargetSubjectKind.md) |  |
| [AttentionType](AttentionType.md) | Closed rather than open: an unenumerated type is one a digest cannot route an... |
| [AttentionUrgency](AttentionUrgency.md) |  |
| [AutonomyLevel](AutonomyLevel.md) | Progressive autonomy ladder |
| [BearerKind](BearerKind.md) |  |
| [BenchmarkDimension](BenchmarkDimension.md) |  |
| [BillingCadence](BillingCadence.md) |  |
| [BranchProtectionState](BranchProtectionState.md) | ADVISORY means the Forge does not prevent a direct push, a force-push or a se... |
| [BudgetOnExhaustion](BudgetOnExhaustion.md) | DEGRADE_ASSURANCE is deliberately absent: reducing assurance requires an expl... |
| [BusinessStateStore](BusinessStateStore.md) |  |
| [CliQualification](CliQualification.md) |  |
| [ComplianceStatus](ComplianceStatus.md) | MAPPED or EVIDENCED is never a certification claim by itself |
| [ConnectorLifecycle](ConnectorLifecycle.md) |  |
| [ConnectorPlacement](ConnectorPlacement.md) |  |
| [ConnectorTransport](ConnectorTransport.md) |  |
| [ConsentState](ConsentState.md) |  |
| [ConsumerIdentityRouting](ConsumerIdentityRouting.md) |  |
| [ConversationTask](ConversationTask.md) | The closed set of ConversationService turn kinds |
| [CoordinationMechanism](CoordinationMechanism.md) |  |
| [CoordinationProfileName](CoordinationProfileName.md) |  |
| [CostClass](CostClass.md) |  |
| [CredentialHeaderStyle](CredentialHeaderStyle.md) | How a ProviderAccount's activated credential is carried on an outbound reques... |
| [CredentialSource](CredentialSource.md) |  |
| [DataScope](DataScope.md) | Widest audience a document or capability's data may be served to |
| [DeliveryMode](DeliveryMode.md) | How a result or an AttentionItem reaches the human |
| [DeploymentTarget](DeploymentTarget.md) |  |
| [DispositionOutcome](DispositionOutcome.md) |  |
| [DocumentRetrieval](DocumentRetrieval.md) |  |
| [DurableWorkflowEngine](DurableWorkflowEngine.md) |  |
| [Effect](Effect.md) | Policy outcome |
| [EffectRecoveryKind](EffectRecoveryKind.md) | Replaces the source schemas' `reversible: boolean`: compensation is applicati... |
| [EngagementGate](EngagementGate.md) |  |
| [EntitlementHolder](EntitlementHolder.md) |  |
| [EntitlementVerdict](EntitlementVerdict.md) |  |
| [ExecutionCellCredentialCustody](ExecutionCellCredentialCustody.md) | Where an ExecutionCell's mTLS client key lives after the certificate ceremony |
| [ExecutionCellLifecycle](ExecutionCellLifecycle.md) |  |
| [ExecutionCellLocalProtocol](ExecutionCellLocalProtocol.md) |  |
| [ExecutionCellPairingMethod](ExecutionCellPairingMethod.md) |  |
| [ExecutionCellPlacement](ExecutionCellPlacement.md) |  |
| [ExecutionStateStore](ExecutionStateStore.md) |  |
| [FacetCreateMode](FacetCreateMode.md) |  |
| [FederationMessageDirection](FederationMessageDirection.md) |  |
| [FieldRepresentation](FieldRepresentation.md) | Semantic shape of one field's value, never a component name |
| [ForbiddenSolicitationReach](ForbiddenSolicitationReach.md) | Delegation is never transitive |
| [ForgeProvider](ForgeProvider.md) | GitHub is the only implemented Forge in V0, behind a Forge-neutral abstractio... |
| [HostnameInclusion](HostnameInclusion.md) |  |
| [HttpMethod](HttpMethod.md) | HTTP request methods for API operations |
| [ImprovementDirection](ImprovementDirection.md) | Required so the loop's effect on corpus size is visible per recommendation |
| [ImprovementMeasure](ImprovementMeasure.md) | Closed, and every entry computable without a model from material that already... |
| [ImprovementRejectReason](ImprovementRejectReason.md) |  |
| [ImprovementState](ImprovementState.md) |  |
| [IndependentVerificationState](IndependentVerificationState.md) | ADVISORY means no automated check confirms a WorkOrder's producer and verifie... |
| [InformationClassification](InformationClassification.md) | Confidentiality dimension, split out from the single DataScope enum: classifi... |
| [IntentKind](IntentKind.md) |  |
| [InterfaceEntity](InterfaceEntity.md) |  |
| [InteroperabilityAdapter](InteroperabilityAdapter.md) | Sealed registry of authorized public interoperability adapters |
| [JourneyVerificationTarget](JourneyVerificationTarget.md) |  |
| [KitBindingValueType](KitBindingValueType.md) |  |
| [KitModuleType](KitModuleType.md) |  |
| [MachineDesiredState](MachineDesiredState.md) |  |
| [MachineEnvironment](MachineEnvironment.md) |  |
| [MachineOrigin](MachineOrigin.md) |  |
| [McpBundleLifecycle](McpBundleLifecycle.md) |  |
| [McpBundlePlacement](McpBundlePlacement.md) |  |
| [McpBundleTrustClass](McpBundleTrustClass.md) |  |
| [McpCatalogAssessmentOutcome](McpCatalogAssessmentOutcome.md) |  |
| [McpCatalogInstallability](McpCatalogInstallability.md) |  |
| [McpReconciliationDecisionType](McpReconciliationDecisionType.md) |  |
| [McpRegistrySourceLifecycle](McpRegistrySourceLifecycle.md) |  |
| [McpRegistrySourceType](McpRegistrySourceType.md) |  |
| [McpRegistrySyncMode](McpRegistrySyncMode.md) |  |
| [McpTransportType](McpTransportType.md) |  |
| [MethodologyComplianceLevel](MethodologyComplianceLevel.md) |  |
| [Modality](Modality.md) |  |
| [ModelAccessAdapter](ModelAccessAdapter.md) |  |
| [NotificationChannel](NotificationChannel.md) |  |
| [Obligation](Obligation.md) |  |
| [OfferingState](OfferingState.md) |  |
| [OnExhaustionOutcome](OnExhaustionOutcome.md) |  |
| [OperationEffect](OperationEffect.md) | SYSTEM_EFFECT is the recovery-gated root system-effect branch (ADR-0056); an ... |
| [OperationIdempotency](OperationIdempotency.md) |  |
| [OperationReconciliation](OperationReconciliation.md) |  |
| [OrganizationRole](OrganizationRole.md) | Governance role in an Organization tenant |
| [PolicyScope](PolicyScope.md) |  |
| [PresenceDensity](PresenceDensity.md) | How much is shown at once |
| [PresenceMotion](PresenceMotion.md) |  |
| [PrincipalKind](PrincipalKind.md) |  |
| [ProcessGatewayMode](ProcessGatewayMode.md) |  |
| [ProcessGatewayRole](ProcessGatewayRole.md) |  |
| [ProcessHistoryRetention](ProcessHistoryRetention.md) |  |
| [ProcessStartTrigger](ProcessStartTrigger.md) |  |
| [ProcessStepKind](ProcessStepKind.md) | The BPMN-shaped element kinds the ProcessSpec compiler maps to Temporal and, ... |
| [ProcessStepSemanticStage](ProcessStepSemanticStage.md) | Verbatim from WorkflowDeclaration |
| [ProcessTerminalState](ProcessTerminalState.md) |  |
| [ProhibitedAuthority](ProhibitedAuthority.md) | Explicit denials that no policy may override |
| [ProjectionKind](ProjectionKind.md) |  |
| [ProjectionSource](ProjectionSource.md) |  |
| [ProjectLifecycle](ProjectLifecycle.md) |  |
| [ProjectVisibility](ProjectVisibility.md) |  |
| [PromptEngine](PromptEngine.md) |  |
| [PromptOutputForm](PromptOutputForm.md) |  |
| [ProviderObservationProvenance](ProviderObservationProvenance.md) |  |
| [ProviderOnExhaustion](ProviderOnExhaustion.md) |  |
| [ProviderQuotaWindowKind](ProviderQuotaWindowKind.md) |  |
| [QuotaStatus](QuotaStatus.md) |  |
| [RealmExposureMode](RealmExposureMode.md) | Exposure and federation posture of the Realm |
| [RealmSphere](RealmSphere.md) | Organizational grouping only |
| [ReasoningEffort](ReasoningEffort.md) |  |
| [RedistributionTerms](RedistributionTerms.md) |  |
| [ReleaseCompartment](ReleaseCompartment.md) | The audience/purpose compartment a declassified value is released into |
| [ReleaseTransformation](ReleaseTransformation.md) | How a value crossed from its classification into its compartment |
| [RemoteMcpAppraisalVerdict](RemoteMcpAppraisalVerdict.md) |  |
| [RepositoryOwnership](RepositoryOwnership.md) |  |
| [RepositoryVisibility](RepositoryVisibility.md) |  |
| [RequiredOwners](RequiredOwners.md) |  |
| [Reversibility](Reversibility.md) |  |
| [Ring](Ring.md) | Self-modification ring (ADR-0008) |
| [RiskTier](RiskTier.md) | ROOT capabilities are Ring 0 and are never grantable through an ordinary work... |
| [SchemaProfile](SchemaProfile.md) | Supported generation schema profiles |
| [SecretBindingLifecycle](SecretBindingLifecycle.md) |  |
| [SecretInjectionTarget](SecretInjectionTarget.md) |  |
| [SelfDescriptionAudience](SelfDescriptionAudience.md) |  |
| [SelfDescriptionQuestion](SelfDescriptionQuestion.md) | Fixed vocabulary so every governed Project answers the same questions, and Ne... |
| [SelfDescriptionSubjectKind](SelfDescriptionSubjectKind.md) |  |
| [SharedRepositoryApprovalPolicy](SharedRepositoryApprovalPolicy.md) | Who must approve a forge-write against a shared repository binding |
| [SlaTier](SlaTier.md) |  |
| [SourceVisibility](SourceVisibility.md) |  |
| [StructuredOutputMode](StructuredOutputMode.md) |  |
| [TaskClass](TaskClass.md) |  |
| [ToolUseRequirement](ToolUseRequirement.md) |  |
| [TopologyPlacement](TopologyPlacement.md) |  |
| [UpstreamToolDisposition](UpstreamToolDisposition.md) | EXPOSED is reachable through a declared semantic operation |
| [VariableTrust](VariableTrust.md) | UNTRUSTED carries content originating outside the trust boundary -- email bod... |
| [VatTreatment](VatTreatment.md) |  |
| [VoiceStyle](VoiceStyle.md) |  |
| [VoiceVerbosity](VoiceVerbosity.md) |  |
| [WireProtocol](WireProtocol.md) | The upstream request/response shape a ProviderPlatform speaks (provider-platf... |
| [WorkerAccountUse](WorkerAccountUse.md) |  |
| [WorkerCli](WorkerCli.md) | The CLI a worker substrate runs |
| [WorkerNetworkIsolation](WorkerNetworkIsolation.md) |  |
| [WorkerSubstrateKind](WorkerSubstrateKind.md) |  |
| [WorkerUsageContext](WorkerUsageContext.md) |  |
| [WorkerWorkspaceMode](WorkerWorkspaceMode.md) |  |
| [WorkloadCommandStatus](WorkloadCommandStatus.md) |  |
| [WorkloadDriverKind](WorkloadDriverKind.md) | Closed over the drivers activatable by machine-pull-workload-supervisor |
| [WorkOrderDeclineReason](WorkOrderDeclineReason.md) |  |
| [WorkOrderState](WorkOrderState.md) | PROPOSED and ACCEPTED are separate because a work order is not an acceptance,... |
| [WritePathEditor](WritePathEditor.md) |  |


## Types

| Type | Description |
| --- | --- |
| [Boolean](Boolean.md) | A binary (true or false) value |
| [CapabilityName](CapabilityName.md) | Capability namespace grammar: <domain> |
| [ConfigurationRef](ConfigurationRef.md) | Reference to trusted runtime configuration |
| [Curie](Curie.md) | a compact URI |
| [Date](Date.md) | a date (year, month and day) in an idealized calendar |
| [DateOrDatetime](DateOrDatetime.md) | Either a date or a datetime |
| [Datetime](Datetime.md) | The combination of a date and time |
| [Decimal](Decimal.md) | A real number with arbitrary precision that conforms to the xsd:decimal speci... |
| [DecisionReference](DecisionReference.md) | Stable reference to a repository architecture decision record |
| [Double](Double.md) | A real number that conforms to the xsd:double specification |
| [Duration](Duration.md) | ISO 8601 duration |
| [Float](Float.md) | A real number that conforms to the xsd:float specification |
| [Identifier](Identifier.md) | Stable technical identifier |
| [Integer](Integer.md) | An integer |
| [Jsonpath](Jsonpath.md) | A string encoding a JSON Path |
| [Jsonpointer](Jsonpointer.md) | A string encoding a JSON Pointer |
| [Namespace](Namespace.md) | Reverse-DNS namespace grammar (1 to 8 lowercase dot-separated segments) |
| [Ncname](Ncname.md) | Prefix part of CURIE |
| [Nodeidentifier](Nodeidentifier.md) | A URI, CURIE or BNODE that represents a node in a model |
| [Objectidentifier](Objectidentifier.md) | A URI or CURIE that represents an object in the model |
| [OpenBaoRuntimeRef](OpenBaoRuntimeRef.md) | Account- or connector-scoped OpenBao KV-v2 reference; the broker resolves the... |
| [QualifiedCapabilityReference](QualifiedCapabilityReference.md) | Qualified capability reference grammar: <namespace>/<capabilityName> |
| [QualifiedReference](QualifiedReference.md) | Qualified reference grammar: <namespace>/<id> |
| [Sparqlpath](Sparqlpath.md) | A string encoding a SPARQL Property Path |
| [String](String.md) | A character string |
| [Time](Time.md) | A time object represents a (local) time of day, independent of any particular... |
| [Uri](Uri.md) | a complete URI |
| [Uriorcurie](Uriorcurie.md) | a URI or a CURIE |


## Subsets

| Subset | Description |
| --- | --- |
