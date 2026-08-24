---
search:
  boost: 10.0
---

# Class: ImprovementLoopSpec

<div data-search-exclude markdown="1">



URI: [jumo:ImprovementLoopSpec](https://jumo.dev/schemas/jumo-v1/ImprovementLoopSpec)





```mermaid
 classDiagram
    class ImprovementLoopSpec
    click ImprovementLoopSpec href "../ImprovementLoopSpec/"
      ImprovementLoopSpec : assessmentProcessSpecRef





        ImprovementLoopSpec --> "0..1" ContractReference : assessmentProcessSpecRef
        click ContractReference href "../ContractReference/"



      ImprovementLoopSpec : ceilings





        ImprovementLoopSpec --> "1" ImprovementCeilings : ceilings
        click ImprovementCeilings href "../ImprovementCeilings/"



      ImprovementLoopSpec : measures





        ImprovementLoopSpec --> "1..*" ImprovementMeasure : measures
        click ImprovementMeasure href "../ImprovementMeasure/"



      ImprovementLoopSpec : ownerRealm

      ImprovementLoopSpec : projectRef





        ImprovementLoopSpec --> "1" ContractReference : projectRef
        click ContractReference href "../ContractReference/"



      ImprovementLoopSpec : purpose

      ImprovementLoopSpec : synthesisPracticeRef





        ImprovementLoopSpec --> "1" ContractReference : synthesisPracticeRef
        click ContractReference href "../ContractReference/"



      ImprovementLoopSpec : targets





        ImprovementLoopSpec --> "1..*" ImprovementTarget : targets
        click ImprovementTarget href "../ImprovementTarget/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [projectRef](projectRef.md) | 1 <br/> [ContractReference](ContractReference.md) | One loop never reaches across Projects; that would be a delegation, not a rhy... | direct |
| [purpose](purpose.md) | 1 <br/> [String](String.md) |  | direct |
| [measures](measures.md) | 1..* <br/> [ImprovementMeasure](ImprovementMeasure.md) |  | direct |
| [synthesisPracticeRef](synthesisPracticeRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [assessmentProcessSpecRef](assessmentProcessSpecRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) | Optional explicit ProcessSpec (execution | direct |
| [targets](targets.md) | 1..* <br/> [ImprovementTarget](ImprovementTarget.md) |  | direct |
| [ceilings](ceilings.md) | 1 <br/> [ImprovementCeilings](ImprovementCeilings.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ImprovementLoop](ImprovementLoop.md) | [spec](spec.md) | range | [ImprovementLoopSpec](ImprovementLoopSpec.md) |












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
| self | jumo:ImprovementLoopSpec |
| native | jumo:ImprovementLoopSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImprovementLoopSpec
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
    owner: ImprovementLoopSpec
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
  projectRef:
    name: projectRef
    description: One loop never reaches across Projects; that would be a delegation,
      not a rhythm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementLoopSpec
    domain_of:
    - RoutingEligibilitySpec
    - WorkOrderSpec
    - ImprovementLoopSpec
    - ProcessSpecBody
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    range: ContractReference
    required: true
    inlined: true
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementLoopSpec
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  measures:
    name: measures
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementMeasure
    required: true
    multivalued: true
    minimum_cardinality: 1
  synthesisPracticeRef:
    name: synthesisPracticeRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ContractReference
    required: true
    inlined: true
  assessmentProcessSpecRef:
    name: assessmentProcessSpecRef
    description: Optional explicit ProcessSpec (execution.yaml).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ContractReference
    inlined: true
  targets:
    name: targets
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementTarget
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  ceilings:
    name: ceilings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementCeilings
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ImprovementLoopSpec
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
    owner: ImprovementLoopSpec
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
  projectRef:
    name: projectRef
    description: One loop never reaches across Projects; that would be a delegation,
      not a rhythm.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementLoopSpec
    domain_of:
    - RoutingEligibilitySpec
    - WorkOrderSpec
    - ImprovementLoopSpec
    - ProcessSpecBody
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    range: ContractReference
    required: true
    inlined: true
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImprovementLoopSpec
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  measures:
    name: measures
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementMeasure
    required: true
    multivalued: true
    minimum_cardinality: 1
  synthesisPracticeRef:
    name: synthesisPracticeRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ContractReference
    required: true
    inlined: true
  assessmentProcessSpecRef:
    name: assessmentProcessSpecRef
    description: Optional explicit ProcessSpec (execution.yaml).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ContractReference
    inlined: true
  targets:
    name: targets
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementTarget
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  ceilings:
    name: ceilings
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImprovementLoopSpec
    domain_of:
    - ImprovementLoopSpec
    range: ImprovementCeilings
    required: true
    inlined: true

```
</details></div>