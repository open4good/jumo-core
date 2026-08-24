---
search:
  boost: 10.0
---

# Class: SelfDescriptionSpec

<div data-search-exclude markdown="1">



URI: [jumo:SelfDescriptionSpec](https://jumo.dev/schemas/jumo-v1/SelfDescriptionSpec)





```mermaid
 classDiagram
    class SelfDescriptionSpec
    click SelfDescriptionSpec href "../SelfDescriptionSpec/"
      SelfDescriptionSpec : agentCard





        SelfDescriptionSpec --> "0..1" AgentCard : agentCard
        click AgentCard href "../AgentCard/"



      SelfDescriptionSpec : answers





        SelfDescriptionSpec --> "1..*" SelfDescriptionAnswer : answers
        click SelfDescriptionAnswer href "../SelfDescriptionAnswer/"



      SelfDescriptionSpec : subject





        SelfDescriptionSpec --> "1" SelfDescriptionSubject : subject
        click SelfDescriptionSubject href "../SelfDescriptionSubject/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [subject](subject.md) | 1 <br/> [SelfDescriptionSubject](SelfDescriptionSubject.md) |  | direct |
| [answers](answers.md) | 1..* <br/> [SelfDescriptionAnswer](SelfDescriptionAnswer.md) |  | direct |
| [agentCard](agentCard.md) | 0..1 <br/> [AgentCard](AgentCard.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SelfDescription](SelfDescription.md) | [spec](spec.md) | range | [SelfDescriptionSpec](SelfDescriptionSpec.md) |












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
| self | jumo:SelfDescriptionSpec |
| native | jumo:SelfDescriptionSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: SelfDescriptionSpec
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
  subject:
    name: subject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionSpec
    domain_of:
    - SelfDescriptionSpec
    - ConnectorCredentialRequirement
    range: SelfDescriptionSubject
    required: true
    inlined: true
  answers:
    name: answers
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SelfDescriptionSpec
    domain_of:
    - DocumentFrontMatter
    - SelfDescriptionSpec
    range: SelfDescriptionAnswer
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  agentCard:
    name: agentCard
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionSpec
    domain_of:
    - SelfDescriptionSpec
    range: AgentCard
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: SelfDescriptionSpec
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
  subject:
    name: subject
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionSpec
    domain_of:
    - SelfDescriptionSpec
    - ConnectorCredentialRequirement
    range: SelfDescriptionSubject
    required: true
    inlined: true
  answers:
    name: answers
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: SelfDescriptionSpec
    domain_of:
    - DocumentFrontMatter
    - SelfDescriptionSpec
    range: SelfDescriptionAnswer
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1
  agentCard:
    name: agentCard
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: SelfDescriptionSpec
    domain_of:
    - SelfDescriptionSpec
    range: AgentCard
    inlined: true

```
</details></div>