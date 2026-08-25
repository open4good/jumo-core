---
search:
  boost: 10.0
---

# Class: McpServerDescriptor


_Descriptor specifying MCP server transport and connection target._



<div data-search-exclude markdown="1">



URI: [jumo:McpServerDescriptor](https://jumo.dev/schemas/jumo-v1/McpServerDescriptor)





```mermaid
 classDiagram
    class McpServerDescriptor
    click McpServerDescriptor href "../McpServerDescriptor/"
      McpServerDescriptor : endpointUrl

      McpServerDescriptor : ociImage

      McpServerDescriptor : sourceCommitSha

      McpServerDescriptor : sourceRepository

      McpServerDescriptor : tlsRequired

      McpServerDescriptor : transport





        McpServerDescriptor --> "1" McpTransportType : transport
        click McpTransportType href "../McpTransportType/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [transport](transport.md) | 1 <br/> [McpTransportType](McpTransportType.md) |  | direct |
| [endpointUrl](endpointUrl.md) | 0..1 <br/> [String](String.md) |  | direct |
| [ociImage](ociImage.md) | 0..1 <br/> [String](String.md) |  | direct |
| [sourceRepository](sourceRepository.md) | 0..1 <br/> [String](String.md) |  | direct |
| [sourceCommitSha](sourceCommitSha.md) | 0..1 <br/> [String](String.md) |  | direct |
| [tlsRequired](tlsRequired.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ConnectorPackageSpec](ConnectorPackageSpec.md) | [supportedTransports](supportedTransports.md) | range | [McpServerDescriptor](McpServerDescriptor.md) |












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
| self | jumo:McpServerDescriptor |
| native | jumo:McpServerDescriptor |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpServerDescriptor
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
description: Descriptor specifying MCP server transport and connection target.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpServerDescriptor
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: McpTransportType
    required: true
  endpointUrl:
    name: endpointUrl
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  ociImage:
    name: ociImage
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpServerDescriptor
    domain_of:
    - CliReleaseSpec
    - McpServerDescriptor
    range: string
  sourceRepository:
    name: sourceRepository
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  sourceCommitSha:
    name: sourceCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  tlsRequired:
    name: tlsRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: McpServerDescriptor
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
description: Descriptor specifying MCP server transport and connection target.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  transport:
    name: transport
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpServerDescriptor
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleRuntime
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - FederatedPeerSpec
    - McpServerDescriptor
    range: McpTransportType
    required: true
  endpointUrl:
    name: endpointUrl
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  ociImage:
    name: ociImage
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpServerDescriptor
    domain_of:
    - CliReleaseSpec
    - McpServerDescriptor
    range: string
  sourceRepository:
    name: sourceRepository
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  sourceCommitSha:
    name: sourceCommitSha
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: string
  tlsRequired:
    name: tlsRequired
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpServerDescriptor
    domain_of:
    - McpServerDescriptor
    range: boolean

```
</details></div>