---
search:
  boost: 10.0
---

# Class: AcknowledgementPolicy

<div data-search-exclude markdown="1">



URI: [jumo:AcknowledgementPolicy](https://jumo.dev/schemas/jumo-v1/AcknowledgementPolicy)





```mermaid
 classDiagram
    class AcknowledgementPolicy
    click AcknowledgementPolicy href "../AcknowledgementPolicy/"
      AcknowledgementPolicy : immediateAnswerMaySatisfy

      AcknowledgementPolicy : maximumDelay

      AcknowledgementPolicy : mode

      AcknowledgementPolicy : triggers





        AcknowledgementPolicy --> "1..*" AcknowledgementTrigger : triggers
        click AcknowledgementTrigger href "../AcknowledgementTrigger/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [mode](mode.md) | 1 <br/> [String](String.md) |  | direct |
| [triggers](triggers.md) | 1..* <br/> [AcknowledgementTrigger](AcknowledgementTrigger.md) |  | direct |
| [immediateAnswerMaySatisfy](immediateAnswerMaySatisfy.md) | 1 <br/> [Boolean](Boolean.md) | Source schema pins this to `const: true`; enforced in Rego | direct |
| [maximumDelay](maximumDelay.md) | 0..1 <br/> [Duration](Duration.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ChiefOfStaffProfileSpec](ChiefOfStaffProfileSpec.md) | [acknowledgement](acknowledgement.md) | range | [AcknowledgementPolicy](AcknowledgementPolicy.md) |












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
| self | jumo:AcknowledgementPolicy |
| native | jumo:AcknowledgementPolicy |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: AcknowledgementPolicy
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
  mode:
    name: mode
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    - ExecutionCellTransport
    - ProviderRouting
    - WorkerModelAccess
    range: string
    required: true
    equals_string: ADAPTIVE
  triggers:
    name: triggers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: AcknowledgementTrigger
    required: true
    multivalued: true
    minimum_cardinality: 1
  immediateAnswerMaySatisfy:
    name: immediateAnswerMaySatisfy
    description: 'Source schema pins this to `const: true`; enforced in Rego.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: boolean
    required: true
  maximumDelay:
    name: maximumDelay
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: Duration

```
</details>

### Induced

<details>
```yaml
name: AcknowledgementPolicy
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
  mode:
    name: mode
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    - ExecutionCellTransport
    - ProviderRouting
    - WorkerModelAccess
    range: string
    required: true
    equals_string: ADAPTIVE
  triggers:
    name: triggers
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: AcknowledgementTrigger
    required: true
    multivalued: true
    minimum_cardinality: 1
  immediateAnswerMaySatisfy:
    name: immediateAnswerMaySatisfy
    description: 'Source schema pins this to `const: true`; enforced in Rego.'
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: boolean
    required: true
  maximumDelay:
    name: maximumDelay
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: AcknowledgementPolicy
    domain_of:
    - AcknowledgementPolicy
    range: Duration

```
</details></div>