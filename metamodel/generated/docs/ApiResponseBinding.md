---
search:
  boost: 10.0
---

# Class: ApiResponseBinding


_Response schema binding for a specific HTTP status code._



<div data-search-exclude markdown="1">



URI: [jumo:ApiResponseBinding](https://jumo.dev/schemas/jumo-v1/ApiResponseBinding)





```mermaid
 classDiagram
    class ApiResponseBinding
    click ApiResponseBinding href "../ApiResponseBinding/"
      ApiResponseBinding : description

      ApiResponseBinding : mediaType

      ApiResponseBinding : schemaBinding





        ApiResponseBinding --> "1" SchemaBinding : schemaBinding
        click SchemaBinding href "../SchemaBinding/"



      ApiResponseBinding : statusCode


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [statusCode](statusCode.md) | 1 <br/> [Integer](Integer.md) |  | direct |
| [mediaType](mediaType.md) | 1 <br/> [String](String.md) |  | direct |
| [schemaBinding](schemaBinding.md) | 1 <br/> [SchemaBinding](SchemaBinding.md) |  | direct |
| [description](description.md) | 0..1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ApiOperation](ApiOperation.md) | [responseBindings](responseBindings.md) | range | [ApiResponseBinding](ApiResponseBinding.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | NONE |
| jumo.model_role | VALUE_OBJECT |
| jumo.audience | PUBLIC_WEB |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ApiResponseBinding |
| native | jumo:ApiResponseBinding |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ApiResponseBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: PUBLIC_WEB
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Response schema binding for a specific HTTP status code.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  statusCode:
    name: statusCode
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ApiResponseBinding
    domain_of:
    - ApiResponseBinding
    range: integer
    required: true
  mediaType:
    name: mediaType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ApiResponseBinding
    domain_of:
    - ApiResponseBinding
    range: string
    required: true
  schemaBinding:
    name: schemaBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ApiResponseBinding
    domain_of:
    - SchemaBoundPayload
    - ApiResponseBinding
    range: SchemaBinding
    required: true
    inlined: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ApiResponseBinding
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string

```
</details>

### Induced

<details>
```yaml
name: ApiResponseBinding
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: NONE
  jumo.model_role:
    tag: jumo.model_role
    value: VALUE_OBJECT
  jumo.audience:
    tag: jumo.audience
    value: PUBLIC_WEB
  jumo.sensitivity:
    tag: jumo.sensitivity
    value: INTERNAL
  jumo.boundary_eligible:
    tag: jumo.boundary_eligible
    value: true
  jumo.schema_profiles:
    tag: jumo.schema_profiles
    value: draft-2020-12,native-json-schema,prompted-json-validated
description: Response schema binding for a specific HTTP status code.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  statusCode:
    name: statusCode
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ApiResponseBinding
    domain_of:
    - ApiResponseBinding
    range: integer
    required: true
  mediaType:
    name: mediaType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ApiResponseBinding
    domain_of:
    - ApiResponseBinding
    range: string
    required: true
  schemaBinding:
    name: schemaBinding
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ApiResponseBinding
    domain_of:
    - SchemaBoundPayload
    - ApiResponseBinding
    range: SchemaBinding
    required: true
    inlined: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ApiResponseBinding
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string

```
</details></div>