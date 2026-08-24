---
search:
  boost: 10.0
---

# Class: McpToolDescriptor


_Tool schema and metadata captured during MCP discovery._



<div data-search-exclude markdown="1">



URI: [jumo:McpToolDescriptor](https://jumo.dev/schemas/jumo-v1/McpToolDescriptor)





```mermaid
 classDiagram
    class McpToolDescriptor
    click McpToolDescriptor href "../McpToolDescriptor/"
      McpToolDescriptor : annotations

      McpToolDescriptor : description

      McpToolDescriptor : inputSchema





        McpToolDescriptor --> "0..1" SchemaBoundPayload : inputSchema
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      McpToolDescriptor : name

      McpToolDescriptor : outputSchema





        McpToolDescriptor --> "0..1" SchemaBoundPayload : outputSchema
        click SchemaBoundPayload href "../SchemaBoundPayload/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [name](name.md) | 1 <br/> [String](String.md) |  | direct |
| [description](description.md) | 0..1 <br/> [String](String.md) |  | direct |
| [inputSchema](inputSchema.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [outputSchema](outputSchema.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [annotations](annotations.md) | * <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpInventorySnapshot](McpInventorySnapshot.md) | [tools](tools.md) | range | [McpToolDescriptor](McpToolDescriptor.md) |












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
| self | jumo:McpToolDescriptor |
| native | jumo:McpToolDescriptor |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpToolDescriptor
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
description: Tool schema and metadata captured during MCP discovery.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  name:
    name: name
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpToolDescriptor
    domain_of:
    - Metadata
    - MethodologySource
    - SelfDescriptionFact
    - AgentCardSkill
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - McpToolDescriptor
    range: string
    required: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpToolDescriptor
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
  inputSchema:
    name: inputSchema
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: SchemaBoundPayload
    inlined: true
  outputSchema:
    name: outputSchema
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: SchemaBoundPayload
    inlined: true
  annotations:
    name: annotations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: string
    multivalued: true

```
</details>

### Induced

<details>
```yaml
name: McpToolDescriptor
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
description: Tool schema and metadata captured during MCP discovery.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  name:
    name: name
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpToolDescriptor
    domain_of:
    - Metadata
    - MethodologySource
    - SelfDescriptionFact
    - AgentCardSkill
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - McpToolDescriptor
    range: string
    required: true
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpToolDescriptor
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
  inputSchema:
    name: inputSchema
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: SchemaBoundPayload
    inlined: true
  outputSchema:
    name: outputSchema
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: SchemaBoundPayload
    inlined: true
  annotations:
    name: annotations
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpToolDescriptor
    domain_of:
    - McpToolDescriptor
    range: string
    multivalued: true

```
</details></div>