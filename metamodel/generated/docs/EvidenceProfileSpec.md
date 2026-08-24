---
search:
  boost: 10.0
---

# Class: EvidenceProfileSpec

<div data-search-exclude markdown="1">



URI: [jumo:EvidenceProfileSpec](https://jumo.dev/schemas/jumo-v1/EvidenceProfileSpec)





```mermaid
 classDiagram
    class EvidenceProfileSpec
    click EvidenceProfileSpec href "../EvidenceProfileSpec/"
      EvidenceProfileSpec : claimCoverage

      EvidenceProfileSpec : defeaters

      EvidenceProfileSpec : dpia





        EvidenceProfileSpec --> "0..1" DataProtectionImpactAssessment : dpia
        click DataProtectionImpactAssessment href "../DataProtectionImpactAssessment/"



      EvidenceProfileSpec : evidenceType

      EvidenceProfileSpec : method

      EvidenceProfileSpec : ownerRealm

      EvidenceProfileSpec : requiredFreshness

      EvidenceProfileSpec : requiredIndependence





        EvidenceProfileSpec --> "0..1" AssuranceLevel : requiredIndependence
        click AssuranceLevel href "../AssuranceLevel/"



      EvidenceProfileSpec : retention

      EvidenceProfileSpec : source

      EvidenceProfileSpec : sourceDependence


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [evidenceType](evidenceType.md) | 1 <br/> [String](String.md) |  | direct |
| [source](source.md) | 1 <br/> [String](String.md) |  | direct |
| [requiredFreshness](requiredFreshness.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |
| [requiredIndependence](requiredIndependence.md) | 0..1 <br/> [AssuranceLevel](AssuranceLevel.md) |  | direct |
| [retention](retention.md) | 0..1 <br/> [Duration](Duration.md) | How long this evidence must be kept, explicit rather than left implicit | direct |
| [claimCoverage](claimCoverage.md) | 0..1 <br/> [String](String.md) | What claim this evidence class actually supports: provenance volume alone is ... | direct |
| [method](method.md) | 0..1 <br/> [String](String.md) |  | direct |
| [sourceDependence](sourceDependence.md) | 0..1 <br/> [String](String.md) |  | direct |
| [defeaters](defeaters.md) | * <br/> [String](String.md) | Known conditions that would invalidate this evidence class | direct |
| [dpia](dpia.md) | 0..1 <br/> [DataProtectionImpactAssessment](DataProtectionImpactAssessment.md) | RGPD art | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [EvidenceProfile](EvidenceProfile.md) | [spec](spec.md) | range | [EvidenceProfileSpec](EvidenceProfileSpec.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | POLICY |
| jumo.sensitivity | PERSONAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:EvidenceProfileSpec |
| native | jumo:EvidenceProfileSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: EvidenceProfileSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
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
    owner: EvidenceProfileSpec
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
  evidenceType:
    name: evidenceType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
    required: true
    pattern: ^.{2,}$
  source:
    name: source
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceProfileSpec
    domain_of:
    - AttentionItemSpec
    - EvidenceProfileSpec
    range: string
    required: true
    pattern: ^.{2,}$
  requiredFreshness:
    name: requiredFreshness
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: Duration
  requiredIndependence:
    name: requiredIndependence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: AssuranceLevel
  retention:
    name: retention
    description: How long this evidence must be kept, explicit rather than left implicit.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceProfileSpec
    domain_of:
    - ProcessingRegisterEntry
    - EvidenceProfileSpec
    range: Duration
  claimCoverage:
    name: claimCoverage
    description: 'What claim this evidence class actually supports: provenance volume
      alone is not proof (docs/concepts/positionnement-conceptuel.md#preuve-et-assurance).'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
  method:
    name: method
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    - ApiOperation
    range: string
  sourceDependence:
    name: sourceDependence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
  defeaters:
    name: defeaters
    description: Known conditions that would invalidate this evidence class.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
    multivalued: true
  dpia:
    name: dpia
    description: RGPD art. 35 impact assessment, when this evidence profile concerns
      personal data processing.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: DataProtectionImpactAssessment
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: EvidenceProfileSpec
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: POLICY
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
    owner: EvidenceProfileSpec
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
  evidenceType:
    name: evidenceType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
    required: true
    pattern: ^.{2,}$
  source:
    name: source
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceProfileSpec
    domain_of:
    - AttentionItemSpec
    - EvidenceProfileSpec
    range: string
    required: true
    pattern: ^.{2,}$
  requiredFreshness:
    name: requiredFreshness
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: Duration
  requiredIndependence:
    name: requiredIndependence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: AssuranceLevel
  retention:
    name: retention
    description: How long this evidence must be kept, explicit rather than left implicit.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: EvidenceProfileSpec
    domain_of:
    - ProcessingRegisterEntry
    - EvidenceProfileSpec
    range: Duration
  claimCoverage:
    name: claimCoverage
    description: 'What claim this evidence class actually supports: provenance volume
      alone is not proof (docs/concepts/positionnement-conceptuel.md#preuve-et-assurance).'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
  method:
    name: method
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    - ApiOperation
    range: string
  sourceDependence:
    name: sourceDependence
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
  defeaters:
    name: defeaters
    description: Known conditions that would invalidate this evidence class.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: string
    multivalued: true
  dpia:
    name: dpia
    description: RGPD art. 35 impact assessment, when this evidence profile concerns
      personal data processing.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: EvidenceProfileSpec
    domain_of:
    - EvidenceProfileSpec
    range: DataProtectionImpactAssessment
    inlined: true

```
</details></div>