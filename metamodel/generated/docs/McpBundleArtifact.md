---
search:
  boost: 10.0
---

# Class: McpBundleArtifact

<div data-search-exclude markdown="1">



URI: [jumo:McpBundleArtifact](https://jumo.dev/schemas/jumo-v1/McpBundleArtifact)





```mermaid
 classDiagram
    class McpBundleArtifact
    click McpBundleArtifact href "../McpBundleArtifact/"
      McpBundleArtifact : digest

      McpBundleArtifact : format

      McpBundleArtifact : license

      McpBundleArtifact : publisher

      McpBundleArtifact : reference

      McpBundleArtifact : sbomRef

      McpBundleArtifact : signatureRef


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [format](format.md) | 1 <br/> [String](String.md) |  | direct |
| [reference](reference.md) | 1 <br/> [String](String.md) |  | direct |
| [digest](digest.md) | 1 <br/> [String](String.md) |  | direct |
| [publisher](publisher.md) | 1 <br/> [String](String.md) |  | direct |
| [signatureRef](signatureRef.md) | 1 <br/> [String](String.md) |  | direct |
| [sbomRef](sbomRef.md) | 1 <br/> [String](String.md) |  | direct |
| [license](license.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [McpBundleSpec](McpBundleSpec.md) | [artifact](artifact.md) | range | [McpBundleArtifact](McpBundleArtifact.md) |












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
| self | jumo:McpBundleArtifact |
| native | jumo:McpBundleArtifact |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: McpBundleArtifact
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
  format:
    name: format
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    equals_string: OCI
  reference:
    name: reference
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^.{3,}$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleArtifact
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ModuleDigestEntry
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  publisher:
    name: publisher
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleArtifact
    domain_of:
    - KitReleaseCertificationSpec
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$
  signatureRef:
    name: signatureRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{3,}$
  sbomRef:
    name: sbomRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{3,}$
  license:
    name: license
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$

```
</details>

### Induced

<details>
```yaml
name: McpBundleArtifact
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
  format:
    name: format
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    equals_string: OCI
  reference:
    name: reference
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^.{3,}$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleArtifact
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ModuleDigestEntry
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$
  publisher:
    name: publisher
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: McpBundleArtifact
    domain_of:
    - KitReleaseCertificationSpec
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$
  signatureRef:
    name: signatureRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{3,}$
  sbomRef:
    name: sbomRef
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{3,}$
  license:
    name: license
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: McpBundleArtifact
    domain_of:
    - McpBundleArtifact
    range: string
    required: true
    pattern: ^.{2,}$

```
</details></div>