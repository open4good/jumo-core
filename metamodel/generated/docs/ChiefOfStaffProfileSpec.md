---
search:
  boost: 10.0
---

# Class: ChiefOfStaffProfileSpec

<div data-search-exclude markdown="1">



URI: [jumo:ChiefOfStaffProfileSpec](https://jumo.dev/schemas/jumo-v1/ChiefOfStaffProfileSpec)





```mermaid
 classDiagram
    class ChiefOfStaffProfileSpec
    click ChiefOfStaffProfileSpec href "../ChiefOfStaffProfileSpec/"
      ChiefOfStaffProfileSpec : acknowledgement





        ChiefOfStaffProfileSpec --> "1" AcknowledgementPolicy : acknowledgement
        click AcknowledgementPolicy href "../AcknowledgementPolicy/"



      ChiefOfStaffProfileSpec : authority

      ChiefOfStaffProfileSpec : clarification





        ChiefOfStaffProfileSpec --> "1" ClarificationPolicy : clarification
        click ClarificationPolicy href "../ClarificationPolicy/"



      ChiefOfStaffProfileSpec : connectorCatalogScope

      ChiefOfStaffProfileSpec : directWorkProcessSpecRef





        ChiefOfStaffProfileSpec --> "1" ContractReference : directWorkProcessSpecRef
        click ContractReference href "../ContractReference/"



      ChiefOfStaffProfileSpec : dispositionRules





        ChiefOfStaffProfileSpec --> "1..*" DispositionRule : dispositionRules
        click DispositionRule href "../DispositionRule/"



      ChiefOfStaffProfileSpec : intakeProcessSpecRef





        ChiefOfStaffProfileSpec --> "1" ContractReference : intakeProcessSpecRef
        click ContractReference href "../ContractReference/"



      ChiefOfStaffProfileSpec : ownerRealm

      ChiefOfStaffProfileSpec : roleDefinitionRef





        ChiefOfStaffProfileSpec --> "1" ContractReference : roleDefinitionRef
        click ContractReference href "../ContractReference/"



      ChiefOfStaffProfileSpec : statusPracticeRef





        ChiefOfStaffProfileSpec --> "0..1" ContractReference : statusPracticeRef
        click ContractReference href "../ContractReference/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [roleDefinitionRef](roleDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [intakeProcessSpecRef](intakeProcessSpecRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [directWorkProcessSpecRef](directWorkProcessSpecRef.md) | 1 <br/> [ContractReference](ContractReference.md) | Governed child Episode started by HANDLE_DIRECTLY; cannot be the intake workf... | direct |
| [authority](authority.md) | 1 <br/> [String](String.md) |  | direct |
| [connectorCatalogScope](connectorCatalogScope.md) | 1 <br/> [String](String.md) |  | direct |
| [clarification](clarification.md) | 1 <br/> [ClarificationPolicy](ClarificationPolicy.md) |  | direct |
| [dispositionRules](dispositionRules.md) | 1..* <br/> [DispositionRule](DispositionRule.md) |  | direct |
| [acknowledgement](acknowledgement.md) | 1 <br/> [AcknowledgementPolicy](AcknowledgementPolicy.md) |  | direct |
| [statusPracticeRef](statusPracticeRef.md) | 0..1 <br/> [ContractReference](ContractReference.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ChiefOfStaffProfile](ChiefOfStaffProfile.md) | [spec](spec.md) | range | [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) |












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
| self | jumo:ChiefOfStaffProfileSpec |
| native | jumo:ChiefOfStaffProfileSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ChiefOfStaffProfileSpec
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
    owner: ChiefOfStaffProfileSpec
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
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true
  intakeProcessSpecRef:
    name: intakeProcessSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    required: true
    inlined: true
  directWorkProcessSpecRef:
    name: directWorkProcessSpecRef
    description: Governed child Episode started by HANDLE_DIRECTLY; cannot be the
      intake workflow itself (Rego). References a ProcessSpec (execution.yaml).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    required: true
    inlined: true
  authority:
    name: authority
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - PrincipleSetSpec
    - ProjectSpec
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: ROUTING_ONLY
  connectorCatalogScope:
    name: connectorCatalogScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: OWN_REALM_SANITIZED
  clarification:
    name: clarification
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ClarificationPolicy
    required: true
    inlined: true
  dispositionRules:
    name: dispositionRules
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: DispositionRule
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  acknowledgement:
    name: acknowledgement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: AcknowledgementPolicy
    required: true
    inlined: true
  statusPracticeRef:
    name: statusPracticeRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ChiefOfStaffProfileSpec
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
    owner: ChiefOfStaffProfileSpec
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
  roleDefinitionRef:
    name: roleDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - RealmChiefOfStaffRef
    - RoleAssignmentSpec
    - TeamMember
    - ChiefOfStaffProfileSpec
    - AdvisorProfileSpec
    - OrganizationRoleBinding
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    range: ContractReference
    required: true
    inlined: true
  intakeProcessSpecRef:
    name: intakeProcessSpecRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    required: true
    inlined: true
  directWorkProcessSpecRef:
    name: directWorkProcessSpecRef
    description: Governed child Episode started by HANDLE_DIRECTLY; cannot be the
      intake workflow itself (Rego). References a ProcessSpec (execution.yaml).
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    required: true
    inlined: true
  authority:
    name: authority
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - PrincipleSetSpec
    - ProjectSpec
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: ROUTING_ONLY
  connectorCatalogScope:
    name: connectorCatalogScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: string
    required: true
    equals_string: OWN_REALM_SANITIZED
  clarification:
    name: clarification
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ClarificationPolicy
    required: true
    inlined: true
  dispositionRules:
    name: dispositionRules
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: DispositionRule
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  acknowledgement:
    name: acknowledgement
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: AcknowledgementPolicy
    required: true
    inlined: true
  statusPracticeRef:
    name: statusPracticeRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ChiefOfStaffProfileSpec
    domain_of:
    - ChiefOfStaffProfileSpec
    range: ContractReference
    inlined: true

```
</details></div>