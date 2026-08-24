---
search:
  boost: 10.0
---

# Class: WorkerImage

<div data-search-exclude markdown="1">



URI: [jumo:WorkerImage](https://jumo.dev/schemas/jumo-v1/WorkerImage)





```mermaid
 classDiagram
    class WorkerImage
    click WorkerImage href "../WorkerImage/"
      WorkerImage : digest

      WorkerImage : reference


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [reference](reference.md) | 1 <br/> [String](String.md) |  | direct |
| [digest](digest.md) | 1 <br/> [String](String.md) | A tag is a moving target; evidence names the bytes that ran | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [WorkerSubstrateSpec](WorkerSubstrateSpec.md) | [image](image.md) | range | [WorkerImage](WorkerImage.md) |












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
| self | jumo:WorkerImage |
| native | jumo:WorkerImage |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: WorkerImage
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
  reference:
    name: reference
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerImage
    domain_of:
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^.{3,}$
  digest:
    name: digest
    description: A tag is a moving target; evidence names the bytes that ran.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerImage
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ModuleDigestEntry
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$

```
</details>

### Induced

<details>
```yaml
name: WorkerImage
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
  reference:
    name: reference
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerImage
    domain_of:
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^.{3,}$
  digest:
    name: digest
    description: A tag is a moving target; evidence names the bytes that ran.
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: WorkerImage
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ModuleDigestEntry
    - McpBundleArtifact
    - WorkerImage
    range: string
    required: true
    pattern: ^sha256:[0-9a-f]{64}$

```
</details></div>