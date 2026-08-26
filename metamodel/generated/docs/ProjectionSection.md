---
search:
  boost: 10.0
---

# Class: ProjectionSection

<div data-search-exclude markdown="1">



URI: [jumo:ProjectionSection](https://jumo.dev/schemas/jumo-v1/ProjectionSection)





```mermaid
 classDiagram
    class ProjectionSection
    click ProjectionSection href "../ProjectionSection/"
      ProjectionSection : columns

      ProjectionSection : fields





        ProjectionSection --> "1..*" ProjectionField : fields
        click ProjectionField href "../ProjectionField/"



      ProjectionSection : i18nKey

      ProjectionSection : id


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [id](id.md) | 1 <br/> [Identifier](Identifier.md) |  | direct |
| [i18nKey](i18nKey.md) | 1 <br/> [String](String.md) |  | direct |
| [columns](columns.md) | 0..1 <br/> [Integer](Integer.md) |  | direct |
| [fields](fields.md) | 1..* <br/> [ProjectionField](ProjectionField.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [ProjectionSpecBody](ProjectionSpecBody.md) | [sections](sections.md) | range | [ProjectionSection](ProjectionSection.md) |












## Identifier and Mapping Information



### Annotations

| property | value |
| --- | --- |
| jumo.state_authority | GIT |
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
| self | jumo:ProjectionSection |
| native | jumo:ProjectionSection |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: ProjectionSection
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
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
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectionSection
    domain_of:
    - ContractReference
    - Metadata
    - LayerOverride
    - Principle
    - Milestone
    - RepositoryBinding
    - KitProfile
    - KitModule
    - DispositionRule
    - SelfDescriptionSubject
    - AgentCardSkill
    - AcceptanceCriterion
    - EngagementStage
    - GoldenTaskCase
    - AssistedJourneyStep
    - PolicyRule
    - AttentionDecisionOption
    - ProcessStep
    - ProcessFlow
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ConnectorOperation
    - McpBundleOperation
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - Surface
    - ProjectionSection
    range: Identifier
    required: true
  i18nKey:
    name: i18nKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectionSection
    domain_of:
    - AssistedJourneyRequiredField
    - ProjectionSection
    - ProjectionField
    range: string
    required: true
    pattern: ^[a-z][a-zA-Z0-9]*$
  columns:
    name: columns
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectionSection
    domain_of:
    - ProjectionSection
    range: integer
    minimum_value: 1
    maximum_value: 12
  fields:
    name: fields
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectionSection
    domain_of:
    - ProjectionSection
    range: ProjectionField
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details>

### Induced

<details>
```yaml
name: ProjectionSection
annotations:
  jumo.state_authority:
    tag: jumo.state_authority
    value: GIT
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
  id:
    name: id
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectionSection
    domain_of:
    - ContractReference
    - Metadata
    - LayerOverride
    - Principle
    - Milestone
    - RepositoryBinding
    - KitProfile
    - KitModule
    - DispositionRule
    - SelfDescriptionSubject
    - AgentCardSkill
    - AcceptanceCriterion
    - EngagementStage
    - GoldenTaskCase
    - AssistedJourneyStep
    - PolicyRule
    - AttentionDecisionOption
    - ProcessStep
    - ProcessFlow
    - ChangeProposalRef
    - ForgeProjectionRef
    - ProcessRunRef
    - ApprovalSignal
    - ExecutionCellProvisioningRef
    - ConnectorOperation
    - McpBundleOperation
    - ProviderSessionBinding
    - RoutingDecision
    - WorkerInvocation
    - EvidenceRecord
    - Surface
    - ProjectionSection
    range: Identifier
    required: true
  i18nKey:
    name: i18nKey
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: ProjectionSection
    domain_of:
    - AssistedJourneyRequiredField
    - ProjectionSection
    - ProjectionField
    range: string
    required: true
    pattern: ^[a-z][a-zA-Z0-9]*$
  columns:
    name: columns
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectionSection
    domain_of:
    - ProjectionSection
    range: integer
    minimum_value: 1
    maximum_value: 12
  fields:
    name: fields
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: ProjectionSection
    domain_of:
    - ProjectionSection
    range: ProjectionField
    required: true
    multivalued: true
    inlined: true
    inlined_as_list: true
    minimum_cardinality: 1

```
</details></div>