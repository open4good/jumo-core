---
search:
  boost: 10.0
---

# Class: SelfDescriptionFact

<div data-search-exclude markdown="1">



URI: [jumo:SelfDescriptionFact](https://jumo.dev/schemas/jumo-v1/SelfDescriptionFact)





```mermaid
 classDiagram
    class SelfDescriptionFact
    click SelfDescriptionFact href "../SelfDescriptionFact/"
      SelfDescriptionFact : from

      SelfDescriptionFact : name

      SelfDescriptionFact : redactBeyondBoundary


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [name](name.md) | 1 <br/> [String](String.md) |  | direct |
| [from](from.md) | 1 <br/> [String](String.md) | Deterministic source: a contract kind and path such as 'Project | direct |
| [redactBeyondBoundary](redactBeyondBoundary.md) | 0..1 <br/> [Boolean](Boolean.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SelfDescriptionAnswer](SelfDescriptionAnswer.md) | [facts](facts.md) | range | [SelfDescriptionFact](SelfDescriptionFact.md) |












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
| self | jumo:SelfDescriptionFact |
| native | jumo:SelfDescriptionFact |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SelfDescriptionFact
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
    owner: SelfDescriptionFact
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
  from:
    name: from
    description: 'Deterministic source: a contract kind and path such as ''Project.spec.purpose'',
      or a named recognized-state query. Evaluated without a model.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionFact
    domain_of:
    - SelfDescriptionFact
    - ProcessFlow
    range: string
    required: true
    pattern: ^.{3,}$
  redactBeyondBoundary:
    name: redactBeyondBoundary
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: SelfDescriptionFact
    domain_of:
    - SelfDescriptionFact
    range: boolean

```
</details>

### Induced

<details>
```yaml
name: SelfDescriptionFact
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
    owner: SelfDescriptionFact
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
  from:
    name: from
    description: 'Deterministic source: a contract kind and path such as ''Project.spec.purpose'',
      or a named recognized-state query. Evaluated without a model.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionFact
    domain_of:
    - SelfDescriptionFact
    - ProcessFlow
    range: string
    required: true
    pattern: ^.{3,}$
  redactBeyondBoundary:
    name: redactBeyondBoundary
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    ifabsent: 'false'
    owner: SelfDescriptionFact
    domain_of:
    - SelfDescriptionFact
    range: boolean

```
</details></div>