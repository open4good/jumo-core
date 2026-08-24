---
search:
  boost: 5.0
---

# Slot: sourcePath

<div data-search-exclude markdown="1">



URI: [jumo:sourcePath](https://jumo.dev/schemas/jumo-v1/sourcePath)
<!-- no inheritance hierarchy -->





## Applicable Classes

| Name | Description | Modifies Slot |
| --- | --- | --- |
| [KitModule](KitModule.md) |  |  no  |
| [RenderedKitFile](RenderedKitFile.md) |  |  no  |
| [RenderedKitAsset](RenderedKitAsset.md) | Provenance for one rendered binary asset or i18n bundle -- same digest-proven... |  no  |






## Properties

### Type and Range

| Property | Value |
| --- | --- |
| Range | [String](String.md) |
| Domain Of | [KitModule](KitModule.md), [RenderedKitFile](RenderedKitFile.md), [RenderedKitAsset](RenderedKitAsset.md) |

### Cardinality and Requirements

| Property | Value |
| --- | --- |










## Identifier and Mapping Information






## Mappings

| Mapping Type | Mapped Value |
| ---  | ---  |
| self | jumo:sourcePath |
| native | jumo:sourcePath |




## LinkML Source

<details>
```yaml
name: sourcePath
domain_of:
- KitModule
- RenderedKitFile
- RenderedKitAsset
range: string

```
</details></div>