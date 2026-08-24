---
search:
  boost: 10.0
---

# Class: McpCatalogVersion

<div data-search-exclude markdown="1">



URI: [jumo:McpCatalogVersion](https://jumo.dev/schemas/jumo-v1/McpCatalogVersion)





```mermaid
 classDiagram
    class McpCatalogVersion
    click McpCatalogVersion href "../McpCatalogVersion/"
      McpCatalogVersion : catalogId

      McpCatalogVersion : installability





        McpCatalogVersion --> "1" McpCatalogInstallability : installability
        click McpCatalogInstallability href "../McpCatalogInstallability/"



      McpCatalogVersion : observationChecksum

      McpCatalogVersion : version


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [catalogId](catalogId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [version](version.md) | 1 <br/> [String](String.md) |  | direct |
| [observationChecksum](observationChecksum.md) | 1 <br/> [String](String.md) |  | direct |
| [installability](installability.md) | 1 <br/> [McpCatalogInstallability](McpCatalogInstallability.md) |  | direct |















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
| self | jumo:McpCatalogVersion |
| native | jumo:McpCatalogVersion |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpCatalogVersion
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
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  version:
    name: version
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - CliReleaseSpec
    - McpCatalogVersion
    - FederationProfileSpec
    - ConnectorPackageSpec
    range: string
    required: true
  observationChecksum:
    name: observationChecksum
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogVersion
    - McpCatalogFieldCandidate
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  installability:
    name: installability
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    range: McpCatalogInstallability
    required: true

```
</details>

### Induced

<details>
```yaml
name: McpCatalogVersion
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
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    - McpCatalogIdentity
    - McpCatalogAssessment
    - McpCatalogFieldCandidate
    - McpCatalogFieldSelection
    range: Identifier
    required: true
  version:
    name: version
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - CliReleaseSpec
    - McpCatalogVersion
    - FederationProfileSpec
    - ConnectorPackageSpec
    range: string
    required: true
  observationChecksum:
    name: observationChecksum
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogVersion
    - McpCatalogFieldCandidate
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  installability:
    name: installability
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpCatalogVersion
    domain_of:
    - McpCatalogServer
    - McpCatalogVersion
    range: McpCatalogInstallability
    required: true

```
</details></div>