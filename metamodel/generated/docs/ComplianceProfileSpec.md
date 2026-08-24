---
search:
  boost: 10.0
---

# Class: ComplianceProfileSpec

<div data-search-exclude markdown="1">



URI: [jumo:ComplianceProfileSpec](https://jumo.dev/schemas/jumo-v1/ComplianceProfileSpec)





```mermaid
 classDiagram
    class ComplianceProfileSpec
    click ComplianceProfileSpec href "../ComplianceProfileSpec/"
      ComplianceProfileSpec : controlCatalogRef





        ComplianceProfileSpec --> "0..1" ContractReference : controlCatalogRef
        click ContractReference href "../ContractReference/"



      ComplianceProfileSpec : edition

      ComplianceProfileSpec : frameworkName

      ComplianceProfileSpec : mappings





        ComplianceProfileSpec --> "*" ComplianceMapping : mappings
        click ComplianceMapping href "../ComplianceMapping/"



      ComplianceProfileSpec : officialUri

      ComplianceProfileSpec : ownerRealm

      ComplianceProfileSpec : processingRegister





        ComplianceProfileSpec --> "*" ProcessingRegisterEntry : processingRegister
        click ProcessingRegisterEntry href "../ProcessingRegisterEntry/"



      ComplianceProfileSpec : status





        ComplianceProfileSpec --> "1" ComplianceStatus : status
        click ComplianceStatus href "../ComplianceStatus/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [frameworkName](frameworkName.md) | 1 <br/> [String](String.md) |  | direct |
| [edition](edition.md) | 0..1 <br/> [String](String.md) | e | direct |
| [officialUri](officialUri.md) | 0..1 <br/> [String](String.md) | Stable URI to the official referential | direct |
| [status](status.md) | 1 <br/> [ComplianceStatus](ComplianceStatus.md) |  | direct |
| [controlCatalogRef](controlCatalogRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | The ControlCatalog this profile maps against | direct |
| [mappings](mappings.md) | * <br/> [ComplianceMapping](ComplianceMapping.md) |  | direct |
| [processingRegister](processingRegister.md) | * <br/> [ProcessingRegisterEntry](ProcessingRegisterEntry.md) | RGPD art | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ComplianceProfile](ComplianceProfile.md) | [spec](spec.md) | range | [ComplianceProfileSpec](ComplianceProfileSpec.md) |












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
| self | jumo:ComplianceProfileSpec |
| native | jumo:ComplianceProfileSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ComplianceProfileSpec
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
    owner: ComplianceProfileSpec
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
  frameworkName:
    name: frameworkName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
    required: true
    pattern: ^.{3,}$
  edition:
    name: edition
    description: e.g. "2023", "2022" -- the referential's published edition, never
      its text.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
  officialUri:
    name: officialUri
    description: Stable URI to the official referential. No copyrighted text is stored
      here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ComplianceProfileSpec
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
    range: ComplianceStatus
    required: true
  controlCatalogRef:
    name: controlCatalogRef
    description: The ControlCatalog this profile maps against.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ContractReference
    inlined: true
  mappings:
    name: mappings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ComplianceMapping
    multivalued: true
    inlined: true
    inlined_as_list: true
  processingRegister:
    name: processingRegister
    description: RGPD art. 30 register of processing activities this profile covers.
      Empty for non-privacy referentials.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ProcessingRegisterEntry
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: ComplianceProfileSpec
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
    owner: ComplianceProfileSpec
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
  frameworkName:
    name: frameworkName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
    required: true
    pattern: ^.{3,}$
  edition:
    name: edition
    description: e.g. "2023", "2022" -- the referential's published edition, never
      its text.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
  officialUri:
    name: officialUri
    description: Stable URI to the official referential. No copyrighted text is stored
      here.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: string
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ComplianceProfileSpec
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
    range: ComplianceStatus
    required: true
  controlCatalogRef:
    name: controlCatalogRef
    description: The ControlCatalog this profile maps against.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ContractReference
    inlined: true
  mappings:
    name: mappings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ComplianceMapping
    multivalued: true
    inlined: true
    inlined_as_list: true
  processingRegister:
    name: processingRegister
    description: RGPD art. 30 register of processing activities this profile covers.
      Empty for non-privacy referentials.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ComplianceProfileSpec
    domain_of:
    - ComplianceProfileSpec
    range: ProcessingRegisterEntry
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>