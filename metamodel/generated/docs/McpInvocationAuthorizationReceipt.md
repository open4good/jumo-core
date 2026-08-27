---
search:
  boost: 10.0
---

# Class: McpInvocationAuthorizationReceipt


_Signed, short-lived authorization receipt bound to exactly one MCP invocation._



<div data-search-exclude markdown="1">



URI: [jumo:McpInvocationAuthorizationReceipt](https://jumo.dev/schemas/jumo-v1/McpInvocationAuthorizationReceipt)





```mermaid
 classDiagram
    class McpInvocationAuthorizationReceipt
    click McpInvocationAuthorizationReceipt href "../McpInvocationAuthorizationReceipt/"
      McpInvocationAuthorizationReceipt : argumentsDigest

      McpInvocationAuthorizationReceipt : expiresAt

      McpInvocationAuthorizationReceipt : grantId

      McpInvocationAuthorizationReceipt : invocationId

      McpInvocationAuthorizationReceipt : leaseId

      McpInvocationAuthorizationReceipt : operationName

      McpInvocationAuthorizationReceipt : schemaDigest

      McpInvocationAuthorizationReceipt : signature

      McpInvocationAuthorizationReceipt : signingKeyName


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [invocationId](invocationId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [grantId](grantId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [leaseId](leaseId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [operationName](operationName.md) | 1 <br/> [String](String.md) |  | direct |
| [argumentsDigest](argumentsDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [schemaDigest](schemaDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [expiresAt](expiresAt.md) | 1 <br/> [String](String.md) |  | direct |
| [signingKeyName](signingKeyName.md) | 1 <br/> [String](String.md) |  | direct |
| [signature](signature.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpInvocationDispatchRequest](McpInvocationDispatchRequest.md) | [receipt](receipt.md) | range | [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:McpInvocationAuthorizationReceipt |
| native | jumo:McpInvocationAuthorizationReceipt |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpInvocationAuthorizationReceipt
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Signed, short-lived authorization receipt bound to exactly one MCP invocation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  invocationId:
    name: invocationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  grantId:
    name: grantId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - PlannedOperation
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: Identifier
    required: true
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - SessionPlanRequest
    - SessionPlan
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  operationName:
    name: operationName
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  argumentsDigest:
    name: argumentsDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  schemaDigest:
    name: schemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - SchemaBinding
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  signingKeyName:
    name: signingKeyName
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - SessionPlan
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  signature:
    name: signature
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - MachineAdminPlaybookSpec
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpInvocationAuthorizationReceipt
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: MACHINE_MTLS
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Signed, short-lived authorization receipt bound to exactly one MCP invocation.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  invocationId:
    name: invocationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  grantId:
    name: grantId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - PlannedOperation
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: Identifier
    required: true
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - CliInvocationRequest
    - SessionPlanRequest
    - SessionPlan
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  operationName:
    name: operationName
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  argumentsDigest:
    name: argumentsDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  schemaDigest:
    name: schemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - SchemaBinding
    range: string
    required: true
  expiresAt:
    name: expiresAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - OrganizationRetentionHoldSpec
    - MachineEnrollmentChallenge
    - MachineAdminCommand
    - WorkloadCommand
    - ExecutionCellLease
    - ProviderSessionBinding
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    - ConnectorSessionBinding
    - EffectTestAuthorization
    range: string
    required: true
  signingKeyName:
    name: signingKeyName
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - SessionPlan
    - McpInvocationAuthorizationReceipt
    range: string
    required: true
  signature:
    name: signature
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpInvocationAuthorizationReceipt
    domain_of:
    - MachineAdminPlaybookSpec
    - InvocationAuthorizationReceipt
    - McpInvocationAuthorizationReceipt
    range: string
    required: true

```
</details></div>