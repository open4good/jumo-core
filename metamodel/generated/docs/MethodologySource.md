---
search:
  boost: 10.0
---

# Class: MethodologySource

<div data-search-exclude markdown="1">



URI: [jumo:MethodologySource](https://jumo.dev/schemas/jumo-v1/MethodologySource)





```mermaid
 classDiagram
    class MethodologySource
    click MethodologySource href "../MethodologySource/"
      MethodologySource : complianceLevel





        MethodologySource --> "1" MethodologyComplianceLevel : complianceLevel
        click MethodologyComplianceLevel href "../MethodologyComplianceLevel/"



      MethodologySource : name


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [name](name.md) | 1 <br/> [String](String.md) |  | direct |
| [complianceLevel](complianceLevel.md) | 1 <br/> [MethodologyComplianceLevel](MethodologyComplianceLevel.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [OrganizationTemplateSpec](OrganizationTemplateSpec.md) | [methodologySource](methodologySource.md) | range | [MethodologySource](MethodologySource.md) |












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
| self | jumo:MethodologySource |
| native | jumo:MethodologySource |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: MethodologySource
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
    owner: MethodologySource
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
    pattern: ^.{2,}$
  complianceLevel:
    name: complianceLevel
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MethodologySource
    domain_of:
    - MethodologySource
    range: MethodologyComplianceLevel
    required: true

```
</details>

### Induced

<details>
```yaml
name: MethodologySource
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
    owner: MethodologySource
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
    pattern: ^.{2,}$
  complianceLevel:
    name: complianceLevel
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: MethodologySource
    domain_of:
    - MethodologySource
    range: MethodologyComplianceLevel
    required: true

```
</details></div>