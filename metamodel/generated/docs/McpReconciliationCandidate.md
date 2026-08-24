---
search:
  boost: 10.0
---

# Class: McpReconciliationCandidate

<div data-search-exclude markdown="1">



URI: [jumo:McpReconciliationCandidate](https://jumo.dev/schemas/jumo-v1/McpReconciliationCandidate)





```mermaid
 classDiagram
    class McpReconciliationCandidate
    click McpReconciliationCandidate href "../McpReconciliationCandidate/"
      McpReconciliationCandidate : algorithmVersion

      McpReconciliationCandidate : candidateId

      McpReconciliationCandidate : evidenceDigest

      McpReconciliationCandidate : leftCatalogId

      McpReconciliationCandidate : rightCatalogId

      McpReconciliationCandidate : score


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [candidateId](candidateId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [leftCatalogId](leftCatalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [rightCatalogId](rightCatalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [algorithmVersion](algorithmVersion.md) | 1 <br/> [String](String.md) |  | direct |
| [score](score.md) | 1 <br/> [Float](Float.md) |  | direct |
| [evidenceDigest](evidenceDigest.md) | 1 <br/> [String](String.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | PROJECTION |
| jumo.audience | REALM_PRIVATE |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:McpReconciliationCandidate |
| native | jumo:McpReconciliationCandidate |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpReconciliationCandidate
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: PROJECTION
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
  candidateId:
    name: candidateId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    - ImportedSchemaCandidate
    range: Identifier
    required: true
  leftCatalogId:
    name: leftCatalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: Identifier
    required: true
  rightCatalogId:
    name: rightCatalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: Identifier
    required: true
  algorithmVersion:
    name: algorithmVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true
  score:
    name: score
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: float
    required: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpReconciliationCandidate
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpReconciliationCandidate
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: PROJECTION
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
  candidateId:
    name: candidateId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    - ImportedSchemaCandidate
    range: Identifier
    required: true
  leftCatalogId:
    name: leftCatalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: Identifier
    required: true
  rightCatalogId:
    name: rightCatalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: Identifier
    required: true
  algorithmVersion:
    name: algorithmVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true
  score:
    name: score
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpReconciliationCandidate
    domain_of:
    - McpReconciliationCandidate
    range: float
    required: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpReconciliationCandidate
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
    required: true

```
</details></div>