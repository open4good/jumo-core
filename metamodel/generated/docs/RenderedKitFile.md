---
search:
  boost: 10.0
---

# Class: RenderedKitFile

<div data-search-exclude markdown="1">



URI: [jumo:RenderedKitFile](https://jumo.dev/schemas/jumo-v1/RenderedKitFile)





```mermaid
 classDiagram
    class RenderedKitFile
    click RenderedKitFile href "../RenderedKitFile/"
      RenderedKitFile : digest

      RenderedKitFile : sourcePath

      RenderedKitFile : targetPath


```




<!-- no inheritance hierarchy -->

## Slots

| Name | Cardinality and Range | Description | Inheritance |
| ---  | --- | --- | --- |
| [sourcePath](sourcePath.md) | 1 <br/> [String](String.md) |  | direct |
| [targetPath](targetPath.md) | 1 <br/> [String](String.md) |  | direct |
| [digest](digest.md) | 1 <br/> [String](String.md) |  | direct |





## Usages

| used by | used in | type | used |
| ---  | --- | --- | --- |
| [KitLockSpec](KitLockSpec.md) | [rendered](rendered.md) | range | [RenderedKitFile](RenderedKitFile.md) |












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
| self | jumo:RenderedKitFile |
| native | jumo:RenderedKitFile |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RenderedKitFile
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
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitFile
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^\.jumo/[A-Za-z0-9._/-]+\.yml$
  targetPath:
    name: targetPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RenderedKitFile
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ImprovementRecommendationSpec
    range: string
    required: true
    pattern: ^\.jumo/kits/[a-z][a-z0-9-]*/[A-Za-z0-9._/-]+\.yml$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RenderedKitFile
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
name: RenderedKitFile
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
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitFile
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^\.jumo/[A-Za-z0-9._/-]+\.yml$
  targetPath:
    name: targetPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RenderedKitFile
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ImprovementRecommendationSpec
    range: string
    required: true
    pattern: ^\.jumo/kits/[a-z][a-z0-9-]*/[A-Za-z0-9._/-]+\.yml$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    rank: 1000
    owner: RenderedKitFile
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