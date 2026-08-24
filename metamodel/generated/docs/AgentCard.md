---
search:
  boost: 10.0
---

# Class: AgentCard


_A2A v1.0 Agent Card projection. Discoverability metadata, not a capability grant._



<div data-search-exclude markdown="1">



URI: [jumo:AgentCard](https://jumo.dev/schemas/jumo-v1/AgentCard)





```mermaid
 classDiagram
    class AgentCard
    click AgentCard href "../AgentCard/"
      AgentCard : exposure





        AgentCard --> "1" AgentCardExposure : exposure
        click AgentCardExposure href "../AgentCardExposure/"



      AgentCard : preferredTransports





        AgentCard --> "*" AgentCardTransport : preferredTransports
        click AgentCardTransport href "../AgentCardTransport/"



      AgentCard : protocolVersion

      AgentCard : skills





        AgentCard --> "1..*" AgentCardSkill : skills
        click AgentCardSkill href "../AgentCardSkill/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [protocolVersion](protocolVersion.md) | 1 <br/> [String](String.md) |  | direct |
| [exposure](exposure.md) | 1 <br/> [AgentCardExposure](AgentCardExposure.md) |  | direct |
| [preferredTransports](preferredTransports.md) | * <br/> [AgentCardTransport](AgentCardTransport.md) |  | direct |
| [skills](skills.md) | 1..* <br/> [AgentCardSkill](AgentCardSkill.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [SelfDescriptionSpec](SelfDescriptionSpec.md) | [agentCard](agentCard.md) | range | [AgentCard](AgentCard.md) |












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
| self | jumo:AgentCard |
| native | jumo:AgentCard |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AgentCard
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
description: A2A v1.0 Agent Card projection. Discoverability metadata, not a capability
  grant.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  protocolVersion:
    name: protocolVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    required: true
    equals_string: '1.0'
  exposure:
    name: exposure
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AgentCard
    domain_of:
    - RealmTemplateSpec
    - AgentCard
    - RealmPublicationSpec
    range: AgentCardExposure
    required: true
  preferredTransports:
    name: preferredTransports
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    range: AgentCardTransport
    multivalued: true
  skills:
    name: skills
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    range: AgentCardSkill
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
name: AgentCard
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
description: A2A v1.0 Agent Card projection. Discoverability metadata, not a capability
  grant.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  protocolVersion:
    name: protocolVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    - McpProtocolProfile
    - McpInventorySnapshot
    range: string
    required: true
    equals_string: '1.0'
  exposure:
    name: exposure
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: AgentCard
    domain_of:
    - RealmTemplateSpec
    - AgentCard
    - RealmPublicationSpec
    range: AgentCardExposure
    required: true
  preferredTransports:
    name: preferredTransports
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    range: AgentCardTransport
    multivalued: true
  skills:
    name: skills
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentCard
    domain_of:
    - AgentCard
    range: AgentCardSkill
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>