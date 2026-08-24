---
search:
  boost: 10.0
---

# Class: McpCatalogFieldCandidate

<div data-search-exclude markdown="1">



URI: [jumo:McpCatalogFieldCandidate](https://jumo.dev/schemas/jumo-v1/McpCatalogFieldCandidate)





```mermaid
 classDiagram
    class McpCatalogFieldCandidate
    click McpCatalogFieldCandidate href "../McpCatalogFieldCandidate/"
      McpCatalogFieldCandidate : catalogId

      McpCatalogFieldCandidate : confidence

      McpCatalogFieldCandidate : fieldName

      McpCatalogFieldCandidate : observationChecksum

      McpCatalogFieldCandidate : observedAt

      McpCatalogFieldCandidate : sourceId

      McpCatalogFieldCandidate : valueDigest


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [catalogId](catalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [fieldName](fieldName.md) | 1 <br/> [String](String.md) |  | direct |
| [valueDigest](valueDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [sourceId](sourceId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [observationChecksum](observationChecksum.md) | 1 <br/> [String](String.md) |  | direct |
| [confidence](confidence.md) | 1 <br/> [Float](Float.md) |  | direct |
| [observedAt](observedAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |















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
| self | jumo:McpCatalogFieldCandidate |
| native | jumo:McpCatalogFieldCandidate |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpCatalogFieldCandidate
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
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  fieldName:
    name: fieldName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: string
    required: true
  valueDigest:
    name: valueDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogFieldCandidate
    range: string
    required: true
  sourceId:
    name: sourceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogIdentity
    - McpCatalogFieldCandidate
    - McpRegistrySyncStatus
    range: Identifier
    required: true
  observationChecksum:
    name: observationChecksum
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogVersion
    - McpCatalogFieldCandidate
    range: string
    required: true
  confidence:
    name: confidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - AttentionItemSpec
    - ProviderQuotaObservation
    - McpCatalogFieldCandidate
    range: float
    required: true
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: datetime
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpCatalogFieldCandidate
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
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  fieldName:
    name: fieldName
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: string
    required: true
  valueDigest:
    name: valueDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogFieldCandidate
    range: string
    required: true
  sourceId:
    name: sourceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogIdentity
    - McpCatalogFieldCandidate
    - McpRegistrySyncStatus
    range: Identifier
    required: true
  observationChecksum:
    name: observationChecksum
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogVersion
    - McpCatalogFieldCandidate
    range: string
    required: true
  confidence:
    name: confidence
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - AttentionItemSpec
    - ProviderQuotaObservation
    - McpCatalogFieldCandidate
    range: float
    required: true
  observedAt:
    name: observedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogFieldCandidate
    domain_of:
    - RealmEnforcement
    - MachineInventoryObservation
    - CliInstallationObservation
    - McpCatalogProvenancePin
    - McpCatalogFieldCandidate
    - RemoteMcpAppraisalSpec
    - ChangeSetProjection
    range: datetime
    required: true

```
</details></div>