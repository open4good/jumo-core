---
search:
  boost: 10.0
---

# Class: WorkerGrantedOperation

<div data-search-exclude markdown="1">



URI: [jumo:WorkerGrantedOperation](https://jumo.dev/schemas/jumo-v1/WorkerGrantedOperation)





```mermaid
 classDiagram
    class WorkerGrantedOperation
    click WorkerGrantedOperation href "../WorkerGrantedOperation/"
      WorkerGrantedOperation : connectorDefinitionRef





        WorkerGrantedOperation --> "1" ContractReference : connectorDefinitionRef
        click ContractReference href "../ContractReference/"



      WorkerGrantedOperation : operationRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [connectorDefinitionRef](connectorDefinitionRef.md) | 1 <br/> [ContractReference](ContractReference.md) |  | direct |
| [operationRef](operationRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) | [grantedOperationRefs](grantedOperationRefs.md) | range | [WorkerGrantedOperation](WorkerGrantedOperation.md) |












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
| self | jumo:WorkerGrantedOperation |
| native | jumo:WorkerGrantedOperation |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerGrantedOperation
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
  connectorDefinitionRef:
    name: connectorDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerGrantedOperation
    domain_of:
    - WorkerGrantedOperation
    range: ContractReference
    required: true
    inlined: true
  operationRef:
    name: operationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerGrantedOperation
    domain_of:
    - InvocationAuthorizationReceipt
    - WorkerGrantedOperation
    range: Identifier
    required: true

```
</details>

### Induced

<details>
```yaml
name: WorkerGrantedOperation
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
  connectorDefinitionRef:
    name: connectorDefinitionRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: WorkerGrantedOperation
    domain_of:
    - WorkerGrantedOperation
    range: ContractReference
    required: true
    inlined: true
  operationRef:
    name: operationRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerGrantedOperation
    domain_of:
    - InvocationAuthorizationReceipt
    - WorkerGrantedOperation
    range: Identifier
    required: true

```
</details></div>