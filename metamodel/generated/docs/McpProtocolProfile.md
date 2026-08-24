---
search:
  boost: 10.0
---

# Class: McpProtocolProfile


_Supported MCP protocol capabilities and versions._



<div data-search-exclude markdown="1">



URI: [jumo:McpProtocolProfile](https://jumo.dev/schemas/jumo-v1/McpProtocolProfile)





```mermaid
 classDiagram
    class McpProtocolProfile
    click McpProtocolProfile href "../McpProtocolProfile/"
      McpProtocolProfile : capabilities

      McpProtocolProfile : protocolVersion

      McpProtocolProfile : supportedTransports


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [protocolVersion](protocolVersion.md) | 1 <br/> [String](String.md) |  | direct |
| [supportedTransports](supportedTransports.md) | * <br/> [String](String.md) |  | direct |
| [capabilities](capabilities.md) | * <br/> [String](String.md) |  | direct |















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
| self | jumo:McpProtocolProfile |
| native | jumo:McpProtocolProfile |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpProtocolProfile
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
description: Supported MCP protocol capabilities and versions.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  protocolVersion:
    name: protocolVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpProtocolProfile
    domain_of:
    - AgentCard
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    required: true
  supportedTransports:
    name: supportedTransports
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpProtocolProfile
    domain_of:
    - McpProtocolProfile
    range: string
    multivalued: true
  capabilities:
    name: capabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpProtocolProfile
    domain_of:
    - ActionCapabilitySetSpec
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: McpProtocolProfile
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
description: Supported MCP protocol capabilities and versions.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  protocolVersion:
    name: protocolVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpProtocolProfile
    domain_of:
    - AgentCard
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    required: true
  supportedTransports:
    name: supportedTransports
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpProtocolProfile
    domain_of:
    - McpProtocolProfile
    range: string
    multivalued: true
  capabilities:
    name: capabilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpProtocolProfile
    domain_of:
    - ActionCapabilitySetSpec
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    multivalued: true

```
</details></div>