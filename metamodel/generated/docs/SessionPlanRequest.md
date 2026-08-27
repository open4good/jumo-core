---
search:
  boost: 10.0
---

# Class: SessionPlanRequest


_Request to issue a signed MCP gateway session plan for one ExecutionCellLease (mcp-gateway-session-plan-signing AC2)._



<div data-search-exclude markdown="1">



URI: [jumo:SessionPlanRequest](https://jumo.dev/schemas/jumo-v1/SessionPlanRequest)





```mermaid
 classDiagram
    class SessionPlanRequest
    click SessionPlanRequest href "../SessionPlanRequest/"
      SessionPlanRequest : grantIds

      SessionPlanRequest : leaseId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [leaseId](leaseId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [grantIds](grantIds.md) | * <br/> [Identifier](Identifier.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | COMMAND |
| jumo.audience | MACHINE_MTLS |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:SessionPlanRequest |
| native | jumo:SessionPlanRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SessionPlanRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: Request to issue a signed MCP gateway session plan for one ExecutionCellLease
  (mcp-gateway-session-plan-signing AC2).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SessionPlanRequest
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - CliInvocationRequest
    - SessionPlanRequest
    - SessionPlan
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  grantIds:
    name: grantIds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SessionPlanRequest
    domain_of:
    - SessionPlanRequest
    range: Identifier
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: SessionPlanRequest
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: COMMAND
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
description: Request to issue a signed MCP gateway session plan for one ExecutionCellLease
  (mcp-gateway-session-plan-signing AC2).
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  leaseId:
    name: leaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SessionPlanRequest
    domain_of:
    - WorkloadCommand
    - ExecutionCellLease
    - DelegatedSecretGrant
    - CliInvocationRequest
    - SessionPlanRequest
    - SessionPlan
    - McpInvocationAuthorizationRequest
    - McpInvocationAuthorizationReceipt
    - McpInvocationOutcome
    range: Identifier
    required: true
  grantIds:
    name: grantIds
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SessionPlanRequest
    domain_of:
    - SessionPlanRequest
    range: Identifier
    multivalued: true

```
</details></div>