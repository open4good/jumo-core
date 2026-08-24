---
search:
  boost: 10.0
---

# Class: RenderedKitAsset


_Provenance for one rendered binary asset or i18n bundle -- same digest-provenance shape as RenderedKitFile, kept a separate class because the source/target patterns admit assetExports' file types instead of `.yml`._



<div data-search-exclude markdown="1">



URI: [jumo:RenderedKitAsset](https://jumo.dev/schemas/jumo-v1/RenderedKitAsset)





```mermaid
 classDiagram
    class RenderedKitAsset
    click RenderedKitAsset href "../RenderedKitAsset/"
      RenderedKitAsset : digest

      RenderedKitAsset : sourcePath

      RenderedKitAsset : targetPath


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
| [KitLockSpec](KitLockSpec.md) | [renderedAssets](renderedAssets.md) | range | [RenderedKitAsset](RenderedKitAsset.md) |












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
| self | jumo:RenderedKitAsset |
| native | jumo:RenderedKitAsset |






## LinkML Source

<!-- TODO: investigate https://stackoverflow.com/questions/37606292/how-to-create-tabbed-code-blocks-in-mkdocs-or-sphinx -->

### Direct

<details>
```yaml
name: RenderedKitAsset
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
description: Provenance for one rendered binary asset or i18n bundle -- same digest-provenance
  shape as RenderedKitFile, kept a separate class because the source/target patterns
  admit assetExports' file types instead of `.yml`.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^\.jumo/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$
  targetPath:
    name: targetPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ImprovementRecommendationSpec
    range: string
    required: true
    pattern: ^\.jumo/kits/[a-z][a-z0-9-]*/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
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
name: RenderedKitAsset
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
description: Provenance for one rendered binary asset or i18n bundle -- same digest-provenance
  shape as RenderedKitFile, kept a separate class because the source/target patterns
  admit assetExports' file types instead of `.yml`.
from_schema: https://jumo.dev/schemas/jumo-v1
attributes:
  sourcePath:
    name: sourcePath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
    domain_of:
    - KitModule
    - RenderedKitFile
    - RenderedKitAsset
    range: string
    required: true
    pattern: ^\.jumo/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$
  targetPath:
    name: targetPath
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
    domain_of:
    - RenderedKitFile
    - RenderedKitAsset
    - ImprovementRecommendationSpec
    range: string
    required: true
    pattern: ^\.jumo/kits/[a-z][a-z0-9-]*/assets/[A-Za-z0-9._/-]+\.(png|jpg|jpeg|svg|webp|json)$
  digest:
    name: digest
    from_schema: https://jumo.dev/schemas/jumo-v1
    owner: RenderedKitAsset
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