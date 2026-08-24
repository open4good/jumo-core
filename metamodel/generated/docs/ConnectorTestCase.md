---
search:
  boost: 10.0
---

# Class: ConnectorTestCase


_A single test case in a connector verification plan._



<div data-search-exclude markdown="1">



URI: [jumo:ConnectorTestCase](https://jumo.dev/schemas/jumo-v1/ConnectorTestCase)





```mermaid
 classDiagram
    class ConnectorTestCase
    click ConnectorTestCase href "../ConnectorTestCase/"
      ConnectorTestCase : effectClass

      ConnectorTestCase : expectedOutputDigest

      ConnectorTestCase : inputPayload





        ConnectorTestCase --> "0..1" SchemaBoundPayload : inputPayload
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      ConnectorTestCase : operationId

      ConnectorTestCase : rollbackPayload





        ConnectorTestCase --> "0..1" SchemaBoundPayload : rollbackPayload
        click SchemaBoundPayload href "../SchemaBoundPayload/"



      ConnectorTestCase : testCaseId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [testCaseId](testCaseId.md) | 1 <br/> [String](String.md) |  | direct |
| [operationId](operationId.md) | 1 <br/> [String](String.md) |  | direct |
| [effectClass](effectClass.md) | 1 <br/> [String](String.md) |  | direct |
| [inputPayload](inputPayload.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |
| [expectedOutputDigest](expectedOutputDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [rollbackPayload](rollbackPayload.md) | 0..1 <br/> [SchemaBoundPayload](SchemaBoundPayload.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ConnectorTestPlan](ConnectorTestPlan.md) | [testCases](testCases.md) | range | [ConnectorTestCase](ConnectorTestCase.md) |












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
| self | jumo:ConnectorTestCase |
| native | jumo:ConnectorTestCase |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorTestCase
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
description: A single test case in a connector verification plan.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  testCaseId:
    name: testCaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    - ConnectorTestResult
    range: string
    required: true
  operationId:
    name: operationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    - ApiOperation
    range: string
    required: true
  effectClass:
    name: effectClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: string
    required: true
  inputPayload:
    name: inputPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: SchemaBoundPayload
    inlined: true
  expectedOutputDigest:
    name: expectedOutputDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: string
  rollbackPayload:
    name: rollbackPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: SchemaBoundPayload
    inlined: true

```
</details>

### Induced

<details>
```yaml
name: ConnectorTestCase
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
description: A single test case in a connector verification plan.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  testCaseId:
    name: testCaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    - ConnectorTestResult
    range: string
    required: true
  operationId:
    name: operationId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    - ApiOperation
    range: string
    required: true
  effectClass:
    name: effectClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: string
    required: true
  inputPayload:
    name: inputPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: SchemaBoundPayload
    inlined: true
  expectedOutputDigest:
    name: expectedOutputDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: string
  rollbackPayload:
    name: rollbackPayload
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestCase
    domain_of:
    - ConnectorTestCase
    range: SchemaBoundPayload
    inlined: true

```
</details></div>