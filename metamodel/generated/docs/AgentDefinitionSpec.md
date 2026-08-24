---
search:
  boost: 10.0
---

# Class: AgentDefinitionSpec

<div data-search-exclude markdown="1">



URI: [jumo:AgentDefinitionSpec](https://jumo.dev/schemas/jumo-v1/AgentDefinitionSpec)





```mermaid
 classDiagram
    class AgentDefinitionSpec
    click AgentDefinitionSpec href "../AgentDefinitionSpec/"
      AgentDefinitionSpec : defaultAutonomy





        AgentDefinitionSpec --> "0..1" AutonomyLevel : defaultAutonomy
        click AutonomyLevel href "../AutonomyLevel/"



      AgentDefinitionSpec : modificationRing





        AgentDefinitionSpec --> "0..1" Ring : modificationRing
        click Ring href "../Ring/"



      AgentDefinitionSpec : prohibitedAuthority





        AgentDefinitionSpec --> "1..*" ProhibitedAuthority : prohibitedAuthority
        click ProhibitedAuthority href "../ProhibitedAuthority/"



      AgentDefinitionSpec : requestedCapabilities

      AgentDefinitionSpec : responsibilities


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [responsibilities](responsibilities.md) | 1..* <br/> [String](String.md) |  | direct |
| [requestedCapabilities](requestedCapabilities.md) | 1..* <br/> [CapabilityName](CapabilityName.md) | A request, not a grant | direct |
| [prohibitedAuthority](prohibitedAuthority.md) | 1..* <br/> [ProhibitedAuthority](ProhibitedAuthority.md) |  | direct |
| [defaultAutonomy](defaultAutonomy.md) | 0..1 <br/> [AutonomyLevel](AutonomyLevel.md) |  | direct |
| [modificationRing](modificationRing.md) | 0..1 <br/> [Ring](Ring.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [AgentDefinition](AgentDefinition.md) | [spec](spec.md) | range | [AgentDefinitionSpec](AgentDefinitionSpec.md) |












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
| self | jumo:AgentDefinitionSpec |
| native | jumo:AgentDefinitionSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AgentDefinitionSpec
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
  responsibilities:
    name: responsibilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{5,}$
  requestedCapabilities:
    name: requestedCapabilities
    description: A request, not a grant. Policy decides.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: CapabilityName
    required: true
    multivalued: true
    minimum_cardinality: 1
  prohibitedAuthority:
    name: prohibitedAuthority
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: ProhibitedAuthority
    required: true
    multivalued: true
    minimum_cardinality: 1
  defaultAutonomy:
    name: defaultAutonomy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: AutonomyLevel
  modificationRing:
    name: modificationRing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: Ring

```
</details>

### Induced

<details>
```yaml
name: AgentDefinitionSpec
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
  responsibilities:
    name: responsibilities
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{5,}$
  requestedCapabilities:
    name: requestedCapabilities
    description: A request, not a grant. Policy decides.
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: CapabilityName
    required: true
    multivalued: true
    minimum_cardinality: 1
  prohibitedAuthority:
    name: prohibitedAuthority
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: ProhibitedAuthority
    required: true
    multivalued: true
    minimum_cardinality: 1
  defaultAutonomy:
    name: defaultAutonomy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: AutonomyLevel
  modificationRing:
    name: modificationRing
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AgentDefinitionSpec
    domain_of:
    - AgentDefinitionSpec
    range: Ring

```
</details></div>