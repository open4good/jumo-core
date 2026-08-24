---
search:
  boost: 10.0
---

# Class: ConnectorTestResult


_Observed result and evidence of a connector test case execution._



<div data-search-exclude markdown="1">



URI: [jumo:ConnectorTestResult](https://jumo.dev/schemas/jumo-v1/ConnectorTestResult)





```mermaid
 classDiagram
    class ConnectorTestResult
    click ConnectorTestResult href "../ConnectorTestResult/"
      ConnectorTestResult : actualOutputDigest

      ConnectorTestResult : executedAt

      ConnectorTestResult : executionTimeMs

      ConnectorTestResult : planId

      ConnectorTestResult : sanitizedEvidence

      ConnectorTestResult : status

      ConnectorTestResult : testCaseId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [planId](planId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [testCaseId](testCaseId.md) | 1 <br/> [String](String.md) |  | direct |
| [status](status.md) | 1 <br/> [String](String.md) |  | direct |
| [actualOutputDigest](actualOutputDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [executionTimeMs](executionTimeMs.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [sanitizedEvidence](sanitizedEvidence.md) | 0..1 <br/> [String](String.md) |  | direct |
| [executedAt](executedAt.md) | 1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | EVENT |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:ConnectorTestResult |
| native | jumo:ConnectorTestResult |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ConnectorTestResult
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EVENT
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
description: Observed result and evidence of a connector test case execution.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  planId:
    name: planId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestPlan
    - ConnectorTestResult
    range: Identifier
    required: true
  testCaseId:
    name: testCaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestCase
    - ConnectorTestResult
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: string
    required: true
  actualOutputDigest:
    name: actualOutputDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: string
  executionTimeMs:
    name: executionTimeMs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: integer
  sanitizedEvidence:
    name: sanitizedEvidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - ConnectorTestResult
    range: string
  executedAt:
    name: executedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: ConnectorTestResult
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: EVENT
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
description: Observed result and evidence of a connector test case execution.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  planId:
    name: planId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestPlan
    - ConnectorTestResult
    range: Identifier
    required: true
  testCaseId:
    name: testCaseId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestCase
    - ConnectorTestResult
    range: string
    required: true
  status:
    name: status
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - DocumentFrontMatter
    - ComplianceProfileSpec
    - ControlAssessment
    - MachineHealthObservation
    - MachineEnrollmentResult
    - MachineAdminResult
    - WorkloadCommandResult
    - MachineRuntimeInstallation
    - ExecutionCellLease
    - CliInstallationObservation
    - CliInvocationResult
    - ProviderQuotaObservation
    - ProviderSessionBinding
    - WorkerInvocation
    - ConnectorSessionBinding
    - ConnectorTestResult
    - ApiProblem
    range: string
    required: true
  actualOutputDigest:
    name: actualOutputDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: string
  executionTimeMs:
    name: executionTimeMs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: integer
  sanitizedEvidence:
    name: sanitizedEvidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ConnectorTestResult
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - ConnectorTestResult
    range: string
  executedAt:
    name: executedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ConnectorTestResult
    domain_of:
    - ConnectorTestResult
    range: string
    required: true

```
</details></div>