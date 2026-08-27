---
search:
  boost: 10.0
---

# Class: InvocationAuthorizationReceipt


_Signed, single-use MCP invocation authorization (ADR-0055). Bound to exactly one invocation id, lease, Realm, operation, argument digest and tools digest; carries no session or renewal field and therefore cannot represent renewable session authority. A lease gateway without this receipt cannot contact the upstream._



<div data-search-exclude markdown="1">



URI: [jumo:InvocationAuthorizationReceipt](https://jumo.dev/schemas/jumo-v1/InvocationAuthorizationReceipt)





```mermaid
 classDiagram
    class InvocationAuthorizationReceipt
    click InvocationAuthorizationReceipt href "../InvocationAuthorizationReceipt/"
      InvocationAuthorizationReceipt : argumentDigest

      InvocationAuthorizationReceipt : executionCellLeaseRef

      InvocationAuthorizationReceipt : expiresAt

      InvocationAuthorizationReceipt : invocationId

      InvocationAuthorizationReceipt : operationRef

      InvocationAuthorizationReceipt : ownerRealm

      InvocationAuthorizationReceipt : signature

      InvocationAuthorizationReceipt : toolsDigest


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [invocationId](invocationId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [executionCellLeaseRef](executionCellLeaseRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [ownerRealm](ownerRealm.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [operationRef](operationRef.md) | 1 <br/> [CapabilityName](CapabilityName.md) |  | direct |
| [argumentDigest](argumentDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [toolsDigest](toolsDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |
| [signature](signature.md) | 1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | POLICY |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:InvocationAuthorizationReceipt |
| native | jumo:InvocationAuthorizationReceipt |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: InvocationAuthorizationReceipt
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
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Signed, single-use MCP invocation authorization (ADR-0055). Bound to
  exactly one invocation id, lease, Realm, operation, argument digest and tools digest;
  carries no session or renewal field and therefore cannot represent renewable session
  authority. A lease gateway without this receipt cannot contact the upstream.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  invocationId:
    name: invocationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  executionCellLeaseRef:
    name: executionCellLeaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInventorySnapshot
    range: Identifier
    required: true
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
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
  operationRef:
    name: operationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - WorkerGrantedOperation
    range: CapabilityName
    required: true
  argumentDigest:
    name: argumentDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  toolsDigest:
    name: toolsDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: datetime
    required: true
  signature:
    name: signature
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
    domain_of:
    - MachineAdminPlaybookSpec
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^.{16,}$

```
</details>

### Induced

<details>
```yaml
name: InvocationAuthorizationReceipt
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
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Signed, single-use MCP invocation authorization (ADR-0055). Bound to
  exactly one invocation id, lease, Realm, operation, argument digest and tools digest;
  carries no session or renewal field and therefore cannot represent renewable session
  authority. A lease gateway without this receipt cannot contact the upstream.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  invocationId:
    name: invocationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  executionCellLeaseRef:
    name: executionCellLeaseRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInventorySnapshot
    range: Identifier
    required: true
  ownerRealm:
    name: ownerRealm
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
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
  operationRef:
    name: operationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - WorkerGrantedOperation
    range: CapabilityName
    required: true
  argumentDigest:
    name: argumentDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  toolsDigest:
    name: toolsDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: InvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: datetime
    required: true
  signature:
    name: signature
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: InvocationAuthorizationReceipt
    domain_of:
    - MachineAdminPlaybookSpec
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
    pattern: ^.{16,}$

```
</details></div>