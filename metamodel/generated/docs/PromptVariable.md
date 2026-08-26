---
search:
  boost: 10.0
---

# Class: PromptVariable

<div data-search-exclude markdown="1">



URI: [jumo:PromptVariable](https://jumo.dev/schemas/jumo-v1/PromptVariable)





```mermaid
 classDiagram
    class PromptVariable
    click PromptVariable href "../PromptVariable/"
      PromptVariable : description

      PromptVariable : name

      PromptVariable : required

      PromptVariable : trust





        PromptVariable --> "1" VariableTrust : trust
        click VariableTrust href "../VariableTrust/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [name](name.md) | 1 <br/> [String](String.md) |  | direct |
| [description](description.md) | 0..1 <br/> [String](String.md) |  | direct |
| [trust](trust.md) | 1 <br/> [VariableTrust](VariableTrust.md) |  | direct |
| [required](required.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [PromptTemplateSpec](PromptTemplateSpec.md) | [variables](variables.md) | range | [PromptVariable](PromptVariable.md) |












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
| self | jumo:PromptVariable |
| native | jumo:PromptVariable |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: PromptVariable
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  name:
    name: name
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PromptVariable
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
    pattern: ^[a-z][a-zA-Z0-9_]*$
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptVariable
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - PlannedOperation
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string
  trust:
    name: trust
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptVariable
    domain_of:
    - PromptVariable
    range: VariableTrust
    required: true
  required:
    name: required
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: PromptVariable
    domain_of:
    - PromptVariable
    - AssistedJourneyFieldValidation
    - SecretRotation
    - ProjectionField
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: PromptVariable
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  name:
    name: name
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: PromptVariable
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
    pattern: ^[a-z][a-zA-Z0-9_]*$
  description:
    name: description
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptVariable
    domain_of:
    - PromptVariable
    - AssistedJourneySpec
    - AssistedJourneyStep
    - ActionCapability
    - MachineAdminPlaybookSpec
    - ConnectorOperation
    - McpBundleOperation
    - McpToolDescriptor
    - PlannedOperation
    - ConnectorIntegrationSpec
    - ApiResponseBinding
    range: string
  trust:
    name: trust
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: PromptVariable
    domain_of:
    - PromptVariable
    range: VariableTrust
    required: true
  required:
    name: required
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'true'
    owner: PromptVariable
    domain_of:
    - PromptVariable
    - AssistedJourneyFieldValidation
    - SecretRotation
    - ProjectionField
    range: boolean

```
</details></div>