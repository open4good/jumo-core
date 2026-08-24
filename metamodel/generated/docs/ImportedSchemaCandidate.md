---
search:
  boost: 10.0
---

# Class: ImportedSchemaCandidate


_Candidate LinkML class proposal derived from an external MCP tool schema._



<div data-search-exclude markdown="1">



URI: [jumo:ImportedSchemaCandidate](https://jumo.dev/schemas/jumo-v1/ImportedSchemaCandidate)





```mermaid
 classDiagram
    class ImportedSchemaCandidate
    click ImportedSchemaCandidate href "../ImportedSchemaCandidate/"
      ImportedSchemaCandidate : candidateId

      ImportedSchemaCandidate : externalSchemaDigest

      ImportedSchemaCandidate : justification

      ImportedSchemaCandidate : proposedLinkmlClass

      ImportedSchemaCandidate : transformationStrategy


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [candidateId](candidateId.md) | 1 <br/> [String](String.md) |  | direct |
| [externalSchemaDigest](externalSchemaDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [proposedLinkmlClass](proposedLinkmlClass.md) | 1 <br/> [String](String.md) |  | direct |
| [transformationStrategy](transformationStrategy.md) | 1 <br/> [String](String.md) |  | direct |
| [justification](justification.md) | 0..1 <br/> [String](String.md) |  | direct |















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
| self | jumo:ImportedSchemaCandidate |
| native | jumo:ImportedSchemaCandidate |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ImportedSchemaCandidate
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
description: Candidate LinkML class proposal derived from an external MCP tool schema.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  candidateId:
    name: candidateId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImportedSchemaCandidate
    domain_of:
    - McpReconciliationCandidate
    - ImportedSchemaCandidate
    range: string
    required: true
  externalSchemaDigest:
    name: externalSchemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  proposedLinkmlClass:
    name: proposedLinkmlClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  transformationStrategy:
    name: transformationStrategy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  justification:
    name: justification
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string

```
</details>

### Induced

<details>
```yaml
name: ImportedSchemaCandidate
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
description: Candidate LinkML class proposal derived from an external MCP tool schema.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  candidateId:
    name: candidateId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ImportedSchemaCandidate
    domain_of:
    - McpReconciliationCandidate
    - ImportedSchemaCandidate
    range: string
    required: true
  externalSchemaDigest:
    name: externalSchemaDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  proposedLinkmlClass:
    name: proposedLinkmlClass
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  transformationStrategy:
    name: transformationStrategy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string
    required: true
  justification:
    name: justification
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ImportedSchemaCandidate
    domain_of:
    - ImportedSchemaCandidate
    range: string

```
</details></div>