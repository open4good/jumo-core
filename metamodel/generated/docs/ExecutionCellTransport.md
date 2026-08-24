---
search:
  boost: 10.0
---

# Class: ExecutionCellTransport

<div data-search-exclude markdown="1">



URI: [jumo:ExecutionCellTransport](https://jumo.dev/schemas/jumo-v1/ExecutionCellTransport)





```mermaid
 classDiagram
    class ExecutionCellTransport
    click ExecutionCellTransport href "../ExecutionCellTransport/"
      ExecutionCellTransport : endpointRef

      ExecutionCellTransport : mode


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [mode](mode.md) | 1 <br/> [String](String.md) |  | direct |
| [endpointRef](endpointRef.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ExecutionCellSpec](ExecutionCellSpec.md) | [transport](transport.md) | range | [ExecutionCellTransport](ExecutionCellTransport.md) |












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
| self | jumo:ExecutionCellTransport |
| native | jumo:ExecutionCellTransport |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ExecutionCellTransport
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
    owner: ExecutionCellTransport
    domain_of:
    - AcknowledgementPolicy
    - ExecutionCellTransport
    - ProviderRouting
    - WorkerModelAccess
    range: string
    required: true
    equals_string: OUTBOUND_MTLS
  endpointRef:
    name: endpointRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellTransport
    domain_of:
    - ExecutionCellTransport
    range: string
    required: true
    pattern: ^.{3,}$

```
</details>

### Induced

<details>
```yaml
name: ExecutionCellTransport
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
    owner: ExecutionCellTransport
    domain_of:
    - AcknowledgementPolicy
    - ExecutionCellTransport
    - ProviderRouting
    - WorkerModelAccess
    range: string
    required: true
    equals_string: OUTBOUND_MTLS
  endpointRef:
    name: endpointRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ExecutionCellTransport
    domain_of:
    - ExecutionCellTransport
    range: string
    required: true
    pattern: ^.{3,}$

```
</details></div>