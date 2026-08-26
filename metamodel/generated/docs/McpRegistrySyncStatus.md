---
search:
  boost: 10.0
---

# Class: McpRegistrySyncStatus

<div data-search-exclude markdown="1">



URI: [jumo:McpRegistrySyncStatus](https://jumo.dev/schemas/jumo-v1/McpRegistrySyncStatus)





```mermaid
 classDiagram
    class McpRegistrySyncStatus
    click McpRegistrySyncStatus href "../McpRegistrySyncStatus/"
      McpRegistrySyncStatus : activeProjectionGeneration

      McpRegistrySyncStatus : lastSuccessfulSyncAt

      McpRegistrySyncStatus : lifecycle





        McpRegistrySyncStatus --> "1" McpRegistrySourceLifecycle : lifecycle
        click McpRegistrySourceLifecycle href "../McpRegistrySourceLifecycle/"



      McpRegistrySyncStatus : nextEligibleSync

      McpRegistrySyncStatus : sourceId


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sourceId](sourceId.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [lifecycle](lifecycle.md) | 1 <br/> [McpRegistrySourceLifecycle](McpRegistrySourceLifecycle.md) |  | direct |
| [nextEligibleSync](nextEligibleSync.md) | 0..1 <br/> [Datetime](Datetime.md) |  | direct |
| [activeProjectionGeneration](activeProjectionGeneration.md) | 0..1 <br/> [Identifier](Identifier.md) |  | direct |
| [lastSuccessfulSyncAt](lastSuccessfulSyncAt.md) | 0..1 <br/> [Datetime](Datetime.md) |  | direct |















## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | POSTGRES |
| jumo.model_role | PROJECTION |
| jumo.audience | INTERNAL_WORKER |
| jumo.sensitivity | INTERNAL |
| jumo.boundary_eligible | True |
| jumo.schema_profiles | draft-2020-12,native-json-schema,prompted-json-validated |




### Schema Source


* from schema: https://jumo.dev/schemas/jumo-v1




## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:McpRegistrySyncStatus |
| native | jumo:McpRegistrySyncStatus |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpRegistrySyncStatus
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: PROJECTION
  jumo.audience:
    tag: jumo.audience
    value: INTERNAL_WORKER
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
  sourceId:
    name: sourceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogIdentity
    - McpCatalogFieldCandidate
    - McpRegistrySyncStatus
    - NestedOptionsSource
    range: Identifier
    required: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - ProjectSpec
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpRegistrySyncStatus
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - SecretBindingSpec
    - WorkerSubstrateSpec
    range: McpRegistrySourceLifecycle
    required: true
  nextEligibleSync:
    name: nextEligibleSync
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySyncStatus
    domain_of:
    - McpRegistrySyncStatus
    range: datetime
  activeProjectionGeneration:
    name: activeProjectionGeneration
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - McpCatalogServer
    - McpRegistrySyncStatus
    range: Identifier
  lastSuccessfulSyncAt:
    name: lastSuccessfulSyncAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySyncStatus
    domain_of:
    - McpRegistrySyncStatus
    range: datetime

```
</details>

### Induced

<details>
```yaml
name: McpRegistrySyncStatus
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: POSTGRES
  jumo.model_role:
    tag: jumo.model_role
    value: PROJECTION
  jumo.audience:
    tag: jumo.audience
    value: INTERNAL_WORKER
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
  sourceId:
    name: sourceId
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - McpCatalogProvenancePin
    - McpCatalogIdentity
    - McpCatalogFieldCandidate
    - McpRegistrySyncStatus
    - NestedOptionsSource
    range: Identifier
    required: true
  lifecycle:
    name: lifecycle
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - ProjectSpec
    - McpRegistrySourceSpec
    - McpRegistrySourceBindingSpec
    - McpRegistrySyncStatus
    - ConnectorDefinitionSpec
    - McpBundleSpec
    - RemoteMcpServiceSpec
    - ExecutionCellSpec
    - SecretBindingSpec
    - WorkerSubstrateSpec
    range: McpRegistrySourceLifecycle
    required: true
  nextEligibleSync:
    name: nextEligibleSync
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySyncStatus
    domain_of:
    - McpRegistrySyncStatus
    range: datetime
  activeProjectionGeneration:
    name: activeProjectionGeneration
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpRegistrySyncStatus
    domain_of:
    - McpCatalogServer
    - McpRegistrySyncStatus
    range: Identifier
  lastSuccessfulSyncAt:
    name: lastSuccessfulSyncAt
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpRegistrySyncStatus
    domain_of:
    - McpRegistrySyncStatus
    range: datetime

```
</details></div>