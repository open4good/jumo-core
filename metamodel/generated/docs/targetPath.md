---
search:
  boost: 5.0
---

# Slot: targetPath

<div data-search-exclude markdown="1">



URI: [jumo:targetPath](https://jumo.dev/schemas/jumo-v1/targetPath)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [RenderedKitFile](RenderedKitFile.md) |  |  no  |
| [RenderedKitAsset](RenderedKitAsset.md) | Provenance for one rendered binary asset or i18n bundle -- same digest-proven... |  no  |
| [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |  |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [RenderedKitFile](RenderedKitFile.md), [RenderedKitAsset](RenderedKitAsset.md), [ImprovementRecommendationSpec](ImprovementRecommendationSpec.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:targetPath |
| native | jumo:targetPath |




## LinkML Source

<details>
```yaml
name: targetPath
domain_of:
- RenderedKitFile
- RenderedKitAsset
- ImprovementRecommendationSpec
range: string

```
</details></div>