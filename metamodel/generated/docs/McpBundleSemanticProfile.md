---
search:
  boost: 10.0
---

# Class: McpBundleSemanticProfile

<div data-search-exclude markdown="1">



URI: [jumo:McpBundleSemanticProfile](https://jumo.dev/schemas/jumo-v1/McpBundleSemanticProfile)





```mermaid
 classDiagram
    class McpBundleSemanticProfile
    click McpBundleSemanticProfile href "../McpBundleSemanticProfile/"
      McpBundleSemanticProfile : dataScope





        McpBundleSemanticProfile --> "1" DataScope : dataScope
        click DataScope href "../DataScope/"



      McpBundleSemanticProfile : operations





        McpBundleSemanticProfile --> "1..*" McpBundleOperation : operations
        click McpBundleOperation href "../McpBundleOperation/"



      McpBundleSemanticProfile : purpose


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [purpose](purpose.md) | 1 <br/> [String](String.md) |  | direct |
| [dataScope](dataScope.md) | 1 <br/> [DataScope](DataScope.md) |  | direct |
| [operations](operations.md) | 1..* <br/> [McpBundleOperation](McpBundleOperation.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpBundleSpec](McpBundleSpec.md) | [semanticProfile](semanticProfile.md) | range | [McpBundleSemanticProfile](McpBundleSemanticProfile.md) |












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
| self | jumo:McpBundleSemanticProfile |
| native | jumo:McpBundleSemanticProfile |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpBundleSemanticProfile
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
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  dataScope:
    name: dataScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - AllowedRequest
    - McpBundleSemanticProfile
    range: DataScope
    required: true
  operations:
    name: operations
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSemanticProfile
    - SessionPlan
    - ApiSurfaceSpec
    range: McpBundleOperation
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: McpBundleSemanticProfile
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
  purpose:
    name: purpose
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - ProjectSpec
    - TeamSpecBody
    - WorkOrderSpec
    - PracticeSpec
    - PromptTemplateSpec
    - ImprovementLoopSpec
    - ProcessingRegisterEntry
    - McpBundleSemanticProfile
    - Surface
    range: string
    required: true
    pattern: ^.{10,}$
  dataScope:
    name: dataScope
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - AllowedRequest
    - McpBundleSemanticProfile
    range: DataScope
    required: true
  operations:
    name: operations
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleSemanticProfile
    domain_of:
    - ConnectorDefinitionSpec
    - McpBundleSemanticProfile
    - SessionPlan
    - ApiSurfaceSpec
    range: McpBundleOperation
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>