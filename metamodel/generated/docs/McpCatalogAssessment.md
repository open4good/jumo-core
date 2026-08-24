---
search:
  boost: 10.0
---

# Class: McpCatalogAssessment

<div data-search-exclude markdown="1">



URI: [jumo:McpCatalogAssessment](https://jumo.dev/schemas/jumo-v1/McpCatalogAssessment)





```mermaid
 classDiagram
    class McpCatalogAssessment
    click McpCatalogAssessment href "../McpCatalogAssessment/"
      McpCatalogAssessment : assessedAt

      McpCatalogAssessment : catalogId

      McpCatalogAssessment : dimension

      McpCatalogAssessment : evidenceDigest

      McpCatalogAssessment : outcome





        McpCatalogAssessment --> "1" McpCatalogAssessmentOutcome : outcome
        click McpCatalogAssessmentOutcome href "../McpCatalogAssessmentOutcome/"




```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [catalogId](catalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [dimension](dimension.md) | 1 <br/> [String](String.md) |  | direct |
| [outcome](outcome.md) | 1 <br/> [McpCatalogAssessmentOutcome](McpCatalogAssessmentOutcome.md) |  | direct |
| [evidenceDigest](evidenceDigest.md) | 0..1 <br/> [String](String.md) |  | direct |
| [assessedAt](assessedAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |















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
| self | jumo:McpCatalogAssessment |
| native | jumo:McpCatalogAssessment |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpCatalogAssessment
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
  catalogId:
    name: catalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  dimension:
    name: dimension
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogAssessment
    domain_of:
    - McpCatalogAssessment
    range: string
    required: true
  outcome:
    name: outcome
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - DispositionRule
    - McpCatalogAssessment
    - AppraisalDimension
    range: McpCatalogAssessmentOutcome
    required: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
  assessedAt:
    name: assessedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - DataProtectionImpactAssessment
    - ControlAssessment
    - McpCatalogAssessment
    range: datetime
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpCatalogAssessment
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
  catalogId:
    name: catalogId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  dimension:
    name: dimension
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogAssessment
    domain_of:
    - McpCatalogAssessment
    range: string
    required: true
  outcome:
    name: outcome
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - DispositionRule
    - McpCatalogAssessment
    - AppraisalDimension
    range: McpCatalogAssessmentOutcome
    required: true
  evidenceDigest:
    name: evidenceDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - MachineAdminResult
    - WorkloadCommandResult
    - CliInvocationResult
    - McpCatalogAssessment
    - McpReconciliationCandidate
    - McpReconciliationDecision
    range: string
  assessedAt:
    name: assessedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogAssessment
    domain_of:
    - DataProtectionImpactAssessment
    - ControlAssessment
    - McpCatalogAssessment
    range: datetime
    required: true

```
</details></div>