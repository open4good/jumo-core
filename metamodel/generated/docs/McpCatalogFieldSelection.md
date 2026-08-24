---
search:
  boost: 10.0
---

# Class: McpCatalogFieldSelection

<div data-search-exclude markdown="1">



URI: [jumo:McpCatalogFieldSelection](https://jumo.dev/schemas/jumo-v1/McpCatalogFieldSelection)





```mermaid
 classDiagram
    class McpCatalogFieldSelection
    click McpCatalogFieldSelection href "../McpCatalogFieldSelection/"
      McpCatalogFieldSelection : candidateRef

      McpCatalogFieldSelection : catalogId

      McpCatalogFieldSelection : fieldName

      McpCatalogFieldSelection : selectedAt

      McpCatalogFieldSelection : selectionRuleVersion


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [catalogId](catalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [fieldName](fieldName.md) | 1 <br/> [String](String.md) |  | direct |
| [candidateRef](candidateRef.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [selectionRuleVersion](selectionRuleVersion.md) | 1 <br/> [String](String.md) |  | direct |
| [selectedAt](selectedAt.md) | 1 <br/> [Datetime](Datetime.md) |  | direct |















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
| self | jumo:McpCatalogFieldSelection |
| native | jumo:McpCatalogFieldSelection |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpCatalogFieldSelection
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
    owner: McpCatalogFieldSelection
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
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: string
    required: true
  candidateRef:
    name: candidateRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    - McpReconciliationDecision
    range: Identifier
    required: true
  selectionRuleVersion:
    name: selectionRuleVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    range: string
    required: true
  selectedAt:
    name: selectedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    range: datetime
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpCatalogFieldSelection
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
    owner: McpCatalogFieldSelection
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
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: string
    required: true
  candidateRef:
    name: candidateRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    - McpReconciliationDecision
    range: Identifier
    required: true
  selectionRuleVersion:
    name: selectionRuleVersion
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    range: string
    required: true
  selectedAt:
    name: selectedAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpCatalogFieldSelection
    domain_of:
    - McpCatalogFieldSelection
    range: datetime
    required: true

```
</details></div>