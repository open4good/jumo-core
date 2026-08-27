---
search:
  boost: 10.0
---

# Class: McpInvocationDispatchRequest


_Machine acknowledgement that a signed MCP invocation receipt is about to dispatch upstream._



<div data-search-exclude markdown="1">



URI: [jumo:McpInvocationDispatchRequest](https://jumo.dev/schemas/jumo-v1/McpInvocationDispatchRequest)





```mermaid
 classDiagram
    class McpInvocationDispatchRequest
    click McpInvocationDispatchRequest href "../McpInvocationDispatchRequest/"
      McpInvocationDispatchRequest : receipt





        McpInvocationDispatchRequest --> "1" McpInvocationAuthorizationReceipt : receipt
        click McpInvocationAuthorizationReceipt href "../McpInvocationAuthorizationReceipt/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [receipt](receipt.md) | 1 <br/> [McpInvocationAuthorizationReceipt](McpInvocationAuthorizationReceipt.md) |  | direct |















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
| self | jumo:McpInvocationDispatchRequest |
| native | jumo:McpInvocationDispatchRequest |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpInvocationDispatchRequest
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
description: Machine acknowledgement that a signed MCP invocation receipt is about
  to dispatch upstream.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  receipt:
    name: receipt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpInvocationDispatchRequest
    domain_of:
    - McpInvocationDispatchRequest
    range: McpInvocationAuthorizationReceipt
    required: true
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: McpInvocationDispatchRequest
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
description: Machine acknowledgement that a signed MCP invocation receipt is about
  to dispatch upstream.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  receipt:
    name: receipt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpInvocationDispatchRequest
    domain_of:
    - McpInvocationDispatchRequest
    range: McpInvocationAuthorizationReceipt
    required: true
    inlined: true

```
</details></div>