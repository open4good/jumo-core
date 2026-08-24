---
search:
  boost: 10.0
---

# Class: KitReleaseCertificationSpec

<div data-search-exclude markdown="1">



URI: [jumo:KitReleaseCertificationSpec](https://jumo.dev/schemas/jumo-v1/KitReleaseCertificationSpec)





```mermaid
 classDiagram
    class KitReleaseCertificationSpec
    click KitReleaseCertificationSpec href "../KitReleaseCertificationSpec/"
      KitReleaseCertificationSpec : commit

      KitReleaseCertificationSpec : evidenceRefs

      KitReleaseCertificationSpec : manifestDigest

      KitReleaseCertificationSpec : moduleDigests





        KitReleaseCertificationSpec --> "*" ModuleDigestEntry : moduleDigests
        click ModuleDigestEntry href "../ModuleDigestEntry/"



      KitReleaseCertificationSpec : publisher

      KitReleaseCertificationSpec : repository

      KitReleaseCertificationSpec : signedBy

      KitReleaseCertificationSpec : verifiedBy


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [publisher](publisher.md) | 1 <br/> [String](String.md) |  | direct |
| [repository](repository.md) | 1 <br/> [String](String.md) |  | direct |
| [commit](commit.md) | 1 <br/> [String](String.md) |  | direct |
| [manifestDigest](manifestDigest.md) | 1 <br/> [String](String.md) |  | direct |
| [signedBy](signedBy.md) | 1 <br/> [String](String.md) |  | direct |
| [verifiedBy](verifiedBy.md) | 1 <br/> [String](String.md) |  | direct |
| [evidenceRefs](evidenceRefs.md) | 1..* <br/> [String](String.md) |  | direct |
| [moduleDigests](moduleDigests.md) | * <br/> [ModuleDigestEntry](ModuleDigestEntry.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [KitReleaseCertification](KitReleaseCertification.md) | [spec](spec.md) | range | [KitReleaseCertificationSpec](KitReleaseCertificationSpec.md) |












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
| self | jumo:KitReleaseCertificationSpec |
| native | jumo:KitReleaseCertificationSpec |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: KitReleaseCertificationSpec
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  publisher:
    name: publisher
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  manifestDigest:
    name: manifestDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  signedBy:
    name: signedBy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  verifiedBy:
    name: verifiedBy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  evidenceRefs:
    name: evidenceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    - WorkOrderSpec
    - AttentionItemSpec
    - ControlAssessment
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{3,}$
    minimum_cardinality: 4
  moduleDigests:
    name: moduleDigests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: ModuleDigestEntry
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details>

### Induced

<details>
```yaml
name: KitReleaseCertificationSpec
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
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  publisher:
    name: publisher
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$
  repository:
    name: repository
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - RepositoryBinding
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    - ChangeSetProposal
    range: string
    required: true
    pattern: ^[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+$
  commit:
    name: commit
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReference
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^[0-9a-f]{40}$
  manifestDigest:
    name: manifestDigest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitLockSpec
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  signedBy:
    name: signedBy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  verifiedBy:
    name: verifiedBy
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: string
    required: true
    pattern: ^.{2,}$
  evidenceRefs:
    name: evidenceRefs
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    - WorkOrderSpec
    - AttentionItemSpec
    - ControlAssessment
    - ConnectorAppraisalSpec
    - RemoteMcpAppraisalSpec
    range: string
    required: true
    multivalued: true
    pattern: ^.{3,}$
    minimum_cardinality: 4
  moduleDigests:
    name: moduleDigests
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: KitReleaseCertificationSpec
    domain_of:
    - KitReleaseCertificationSpec
    range: ModuleDigestEntry
    multivalued: true
    inlined: true
    inlined_as_list: true

```
</details></div>