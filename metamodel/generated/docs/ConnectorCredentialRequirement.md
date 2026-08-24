---
search:
  boost: 10.0
---

# Class: ConnectorCredentialRequirement


_Declared credential requirements and delivery mode for a connector._



<div data-search-exclude markdown="1">



URI: [jumo:ConnectorCredentialRequirement](https://jumo.dev/schemas/jumo-v1/ConnectorCredentialRequirement)





```mermaid
 classDiagram
    class ConnectorCredentialRequirement
    click ConnectorCredentialRequirement href "../ConnectorCredentialRequirement/"
      ConnectorCredentialRequirement : credentialType

      ConnectorCredentialRequirement : deliveryMode

      ConnectorCredentialRequirement : requiredScopes

      ConnectorCredentialRequirement : subject


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [credentialType](credentialType.md) | 1 <br/> [String](String.md) |  | direct |
| [subject](subject.md) | 1 <br/> [String](String.md) |  | direct |
| [requiredScopes](requiredScopes.md) | * <br/> [String](String.md) |  | direct |
| [deliveryMode](deliveryMode.md) | 1 <br/> [String](String.md) |  | direct |















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
| self | jumo:ConnectorCredentialRequirement |
| native | jumo:ConnectorCredentialRequirement |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorCredentialRequirement
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
description: Declared credential requirements and delivery mode for a connector.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  credentialType:
    name: credentialType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorCredentialRequirement
    domain_of:
    - ConnectorCredentialRequirement
    range: string
    required: true
  subject:
    name: subject
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorCredentialRequirement
    domain_of:
    - SelfDescriptionSpec
    - ConnectorCredentialRequirement
    range: string
    required: true
  requiredScopes:
    name: requiredScopes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorCredentialRequirement
    domain_of:
    - ConnectorCredentialRequirement
    range: string
    multivalued: true
  deliveryMode:
    name: deliveryMode
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorCredentialRequirement
    domain_of:
    - AttentionItemSpec
    - ConnectorCredentialRequirement
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: ConnectorCredentialRequirement
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
description: Declared credential requirements and delivery mode for a connector.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  credentialType:
    name: credentialType
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorCredentialRequirement
    domain_of:
    - ConnectorCredentialRequirement
    range: string
    required: true
  subject:
    name: subject
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorCredentialRequirement
    domain_of:
    - SelfDescriptionSpec
    - ConnectorCredentialRequirement
    range: string
    required: true
  requiredScopes:
    name: requiredScopes
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorCredentialRequirement
    domain_of:
    - ConnectorCredentialRequirement
    range: string
    multivalued: true
  deliveryMode:
    name: deliveryMode
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorCredentialRequirement
    domain_of:
    - AttentionItemSpec
    - ConnectorCredentialRequirement
    range: string
    required: true

```
</details></div>