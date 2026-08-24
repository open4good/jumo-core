---
search:
  boost: 10.0
---

# Class: RemoteMcpAppraisalSpec

<div data-search-exclude markdown="1">



URI: [jumo:RemoteMcpAppraisalSpec](https://jumo.dev/schemas/jumo-v1/RemoteMcpAppraisalSpec)





```mermaid
 classDiagram
    class RemoteMcpAppraisalSpec
    click RemoteMcpAppraisalSpec href "../RemoteMcpAppraisalSpec/"
      RemoteMcpAppraisalSpec : evidenceRefs

      RemoteMcpAppraisalSpec : inventoryDigest

      RemoteMcpAppraisalSpec : observedAt

      RemoteMcpAppraisalSpec : ownerRealm

      RemoteMcpAppraisalSpec : remoteMcpServiceRef





        RemoteMcpAppraisalSpec --> "1" ContractReference : remoteMcpServiceRef
        click ContractReference href "../ContractReference/"



      RemoteMcpAppraisalSpec : semanticTools

      RemoteMcpAppraisalSpec : validUntil

      RemoteMcpAppraisalSpec : verdict





        RemoteMcpAppraisalSpec --> "1" RemoteMcpAppraisalVerdict : verdict
        click RemoteMcpAppraisalVerdict href "../RemoteMcpAppraisalVerdict/"



      RemoteMcpAppraisalSpec : verifiedByRoleDefinitionRef





        RemoteMcpAppraisalSpec --> "1" ContractReference : verifiedByRoleDefinitionRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [remoteMcpServiceRef](remoteMcpServiceRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [verdict](verdict.md) | 1 <br/> [RemoteMcpAppraisalVerdict](RemoteMcpAppraisalVerdict.md) |  | direct |
| [inventoryDigest](inventoryDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [observedAt](observedAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |
| [validUntil](validUntil.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |
| [verifiedByRoleDefinitionRef](verifiedByRoleDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [evidenceRefs](evidenceRefs.md) | 1..* <br/> [String](String.md) |  | direct |
| [semanticTools](semanticTools.md) | * <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [RemoteMcpAppraisal](RemoteMcpAppraisal.md) | [spec](spec.md) | range | [RemoteMcpAppraisalSpec](RemoteMcpAppraisalSpec.md) |












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
| self | jumo:RemoteMcpAppraisalSpec |
| native | jumo:RemoteMcpAppraisalSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RemoteMcpAppraisalSpec
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
    owner: RemoteMcpAppraisalSpec
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
  remoteMcpServiceRef:
    name: remoteMcpServiceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorDefinitionSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    required: true
    inlined: true
  verdict:
    name: verdict
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    - EntitlementUseContext
    range: RemoteMcpAppraisalVerdict
    required: true
  inventoryDigest:
    name: inventoryDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RemoteMcpAppraisalSpec
    - McpInventorySnapshot
    - ConnectorActivationDecision
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: datetime
    required: true
  validUntil:
    name: validUntil
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: datetime
    required: true
  verifiedByRoleDefinitionRef:
    name: verifiedByRoleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    required: true
    inlined: true
  evidenceRefs:
    name: evidenceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - KitReleaseCertificationSpec
    - WorkOrderSpec
    - AttentionItemSpec
    - ControlAssessment
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{3,}$
    minimum_cardinality: 1
  semanticTools:
    name: semanticTools
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RemoteMcpAppraisalSpec
    range: Identifier
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: RemoteMcpAppraisalSpec
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
    owner: RemoteMcpAppraisalSpec
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
  remoteMcpServiceRef:
    name: remoteMcpServiceRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorDefinitionSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    required: true
    inlined: true
  verdict:
    name: verdict
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    - EntitlementUseContext
    range: RemoteMcpAppraisalVerdict
    required: true
  inventoryDigest:
    name: inventoryDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RemoteMcpAppraisalSpec
    - McpInventorySnapshot
    - ConnectorActivationDecision
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: datetime
    required: true
  validUntil:
    name: validUntil
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ExternalAttestation
    - RemoteMcpAppraisalSpec
    - TermsReview
    range: datetime
    required: true
  verifiedByRoleDefinitionRef:
    name: verifiedByRoleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: ContractReference
    required: true
    inlined: true
  evidenceRefs:
    name: evidenceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - KitReleaseCertificationSpec
    - WorkOrderSpec
    - AttentionItemSpec
    - ControlAssessment
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{3,}$
    minimum_cardinality: 1
  semanticTools:
    name: semanticTools
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RemoteMcpAppraisalSpec
    domain_of:
    - RemoteMcpAppraisalSpec
    range: Identifier
    multivalued: true

```
</details></div>